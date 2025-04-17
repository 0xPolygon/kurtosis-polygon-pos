bor_launcher = import_module("./bor/launcher.star")
constants = import_module("../package_io/constants.star")
context = import_module("./context.star")
erigon_launcher = import_module("./erigon/launcher.star")
shared = import_module("./shared.star")

EL_KEYSTORE_GENERATOR_FOLDER_PATH = "../static_files/el/keystore"

LAUNCHERS = {
    constants.EL_TYPE.bor: bor_launcher.launch,
    constants.EL_TYPE.erigon: erigon_launcher.launch,
}


def launch(
    plan,
    participant,
    id,
    is_validator,
    el_genesis_artifact,
    cl_api_url,
    el_account,
    el_static_nodes,
    el_chain_id,
):
    el_node_name = generate_name(participant, id, is_validator)
    el_keystore_artifact = _generate_keystore(
        plan, el_node_name, el_account.eth_tendermint.private_key
    )
    launch_method = _get_launcher(participant)
    service = launch_method(
        plan,
        el_node_name,
        participant,
        el_genesis_artifact,
        el_keystore_artifact,
        cl_api_url,
        el_account,
        el_static_nodes,
        el_chain_id,
    )

    return context.new_context(
        service_name=el_node_name,
        rpc_http_url=service.ports[shared.RPC_PORT_ID].url,
        ws_url=service.ports[shared.WS_PORT_ID].url,
        metrics_url=service.ports[shared.METRICS_PORT_ID].url,
    )


def _generate_keystore(plan, el_node_name, private_key):
    keystore_generator_artifact = plan.upload_files(
        src=EL_KEYSTORE_GENERATOR_FOLDER_PATH,
        name="{}-keystore-generator-config".format(el_node_name),
    )
    result = plan.run_sh(
        name="{}-keystore-generator".format(el_node_name),
        image=constants.TOOLBOX_IMAGE,
        env_vars={
            "EL_CLIENT_CONFIG_PATH": constants.EL_CLIENT_CONFIG_PATH,
            "PRIVATE_KEY": private_key,
        },
        files={
            "/opt/data/keystore": keystore_generator_artifact,
        },
        store=[
            StoreSpec(
                src=constants.EL_CLIENT_CONFIG_PATH,
                name="{}-keystore-config".format(el_node_name),
            )
        ],
        run="bash /opt/data/keystore/generate.sh",
    )
    return result.files_artifacts


def wait_for_node_startup(plan, service_name):
    recipe = PostHttpRequestRecipe(
        endpoint="",
        content_type="application/json",
        body='{"method":"admin_nodeInfo","params":[],"id":1,"jsonrpc":"2.0"}',
        port_id=shared.RPC_PORT_ID,
        extract={
            "enode": ".result.enode",
        },
    )
    plan.wait(
        description="Wait for '{}' to start up".format(service_name),
        service_name=service_name,
        recipe=recipe,
        field="extract.enode",
        assertion="!=",
        target_value="",
        interval="1s",
        timeout="1m",
    )


def _get_launcher(participant):
    el_type = participant.get("el_type")
    if el_type not in LAUNCHERS:
        fail(
            "Unsupported EL launcher '{0}', need one of '{1}'".format(
                el_type, ",".join(LAUNCHERS.keys())
            )
        )
    return LAUNCHERS.get(el_type)


def generate_name(participant, id, is_validator=False):
    cl_type = participant.get("cl_type")
    el_type = participant.get("el_type")
    suffix = "validator" if is_validator else "rpc"
    return "l2-el-{}-{}-{}-{}".format(
        id,
        el_type,
        cl_type,
        suffix,
    )
