cl_shared = import_module("./shared.star")
constants = import_module("../config/constants.star")
context = import_module("./context.star")
el_launcher = import_module("../el/launcher.star")
el_shared = import_module("../el/shared.star")
heimdall_launcher = import_module("./heimdall/launcher.star")
heimdall_v2_launcher = import_module("./heimdall_v2/launcher.star")
rabbitmq = import_module("./rabbitmq.star")

LAUNCHERS = {
    constants.CL_TYPE.heimdall: heimdall_launcher.launch,
    constants.CL_TYPE.heimdall_v2: heimdall_v2_launcher.launch,
}


def launch(
    plan,
    participant,
    id,
    network_params,
    genesis_artifact,
    config_artifact,
    node_ids,
    l1_rpc_url,
):
    rabbitmq_name = "rabbitmq-l2-cl-{}-{}".format(id, participant.get("kind"))
    rabbitmq_image = participant.get("cl_db_image")
    rabbitmq_url = rabbitmq.launch(plan, rabbitmq_name, rabbitmq_image)

    launch_method = _get_launcher(plan, participant)
    cl_node_name = generate_name(participant, id)
    el_node_name = el_launcher.generate_name(participant, id)
    el_rpc_url = "http://{}:{}".format(el_node_name, el_shared.RPC_PORT_NUMBER)
    service = launch_method(
        plan,
        cl_node_name,
        participant,
        network_params,
        genesis_artifact,
        config_artifact,
        node_ids,
        l1_rpc_url,
        el_rpc_url,
        rabbitmq_url,
    )

    return context.new_context(
        service_name=cl_node_name,
        api_url=service.ports[cl_shared.REST_API_PORT_ID].url,
        rpc_url=service.ports[cl_shared.RPC_PORT_ID].url,
        metrics_url=service.ports[cl_shared.METRICS_PORT_ID].url,
    )


def wait_for_node_startup(plan, service_name):
    recipe = PostHttpRequestRecipe(
        endpoint="",
        content_type="application/json",
        body='{"method":"status","params":[],"id":1,"jsonrpc":"2.0"}',
        port_id=cl_shared.RPC_PORT_ID,
        extract={
            "id": ".result.node_info.id",
        },
    )
    plan.wait(
        description="Wait for '{}' to start up".format(service_name),
        service_name=service_name,
        recipe=recipe,
        field="extract.id",
        assertion="!=",
        target_value="",
        interval="1s",
        timeout="10s",
    )


def _get_launcher(plan, participant):
    cl_type = participant.get("cl_type")
    if cl_type not in LAUNCHERS:
        fail(
            "Unsupported CL launcher '{0}', need one of '{1}'".format(
                cl_type, ",".join(LAUNCHERS.keys())
            )
        )
    return LAUNCHERS.get(cl_type)


def generate_name(participant, id):
    cl_type = participant.get("cl_type")
    el_type = participant.get("el_type")
    suffix = participant.get("kind")
    return "l2-cl-{}-{}-{}-{}".format(id, cl_type, el_type, suffix)
