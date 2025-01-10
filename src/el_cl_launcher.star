bor = import_module("./el/bor/bor_launcher.star")
constants = import_module("./package_io/constants.star")
erigon = import_module("./el/erigon/erigon_launcher.star")
pre_funded_accounts = import_module(
    "./prelaunch_data_generator/genesis_constants/pre_funded_accounts.star"
)
heimdall = import_module("./cl/heimdall/heimdall_launcher.star")


VALIDATOR_CONFIG_GENERATOR_FOLDER_PATH = "../static_files/validator"


def launch(
    plan,
    participants,
    polygon_pos_args,
    el_genesis_artifact,
    cl_genesis_artifact,
    l1_rpc_url,
):
    network_params = polygon_pos_args["network_params"]
    matic_contracts_params = polygon_pos_args["matic_contracts_params"]

    el_launchers = {
        "bor": {
            "launch_method": bor.launch,
        },
        "erigon": {
            "launch_method": erigon.launch,
        },
    }

    cl_launchers = {
        "heimdall": {
            "launch_method": heimdall.launch,
        }
    }

    # Prepare network data and generate validator configs.
    network_data = _prepare_network_data(participants)
    cl_node_url = network_data.first_validator_cl_rpc_url
    validator_config_artifacts = _generate_validator_config(
        plan,
        network_data.cl_validator_configs_str,
        network_data.cl_validator_keystores,
        network_data.el_validator_keystores,
        polygon_pos_args,
    )
    cl_node_ids = _read_cl_persistent_peers(
        plan, validator_config_artifacts.persistent_peers
    )

    # Start each participant.
    participant_index = 0
    validator_index = 0
    for _, participant in enumerate(participants):
        for _ in range(participant["count"]):
            # Get the CL launcher.
            cl_type = participant["cl_type"]
            if cl_type not in cl_launchers:
                fail(
                    "Unsupported CL launcher '{0}', need one of '{1}'".format(
                        cl_type, ",".join(cl_launchers.keys())
                    )
                )
            cl_node_name = _generate_cl_node_name(participant, participant_index + 1)
            cl_launch_method = cl_launchers[cl_type]["launch_method"]

            # Get the EL launcher.
            el_type = participant["el_type"]
            if el_type not in el_launchers:
                fail(
                    "Unsupported EL launcher '{0}', need one of '{1}'".format(
                        el_type, ",".join(el_launchers.keys())
                    )
                )
            el_node_name = _generate_el_node_name(participant, participant_index + 1)
            el_launch_method = el_launchers[el_type]["launch_method"]

            plan.print(
                "Launching participant {} with config: {}".format(
                    participant_index + 1, str(participant)
                )
            )

            # If the participant is a validator, launch the CL node.
            if participant["is_validator"]:
                cl_context = cl_launch_method(
                    plan,
                    cl_node_name,
                    participant,
                    network_params,
                    cl_genesis_artifact,
                    validator_config_artifacts.cl_configs[validator_index],
                    cl_node_ids,
                    l1_rpc_url,
                    "http://{}:{}".format(el_node_name, bor.BOR_RPC_PORT_NUMBER),
                )
                cl_node_url = cl_context.ports[
                    "http"
                ].url  # TODO: Do not hardcode the port name!

            # Launch the EL node.
            el_validator_config_artifact = (
                validator_config_artifacts.el_configs[validator_index]
                if participant["is_validator"]
                else None
            )
            el_context = el_launch_method(
                plan,
                el_node_name,
                participant,
                el_genesis_artifact,
                el_validator_config_artifact,
                cl_node_url,
                pre_funded_accounts.PRE_FUNDED_ACCOUNTS[participant_index],
                network_data.enode_urls,
            )

            # Increment the indexes.
            participant_index += 1
            if participant["is_validator"]:
                validator_index += 1


def _prepare_network_data(participants):
    # The rpc url of the first validator's CL node.
    first_validator_cl_rpc_url = ""
    # An array of strings containing validator configurations.
    # Each string should follow the format: "<private_key>,<p2p_url>".
    cl_validator_configs = []
    # An array of keystores for CL and EL validators.
    cl_validator_keystores = []
    el_validator_keystores = []
    # An array of EL enode URLs.
    enode_urls = []

    # Iterate through all participants in the network and generate necessary configurations.
    index = 0
    for _, participant in enumerate(participants):
        if participant["is_validator"]:
            for _ in range(participant["count"]):
                validator_id = index + 1
                cl_node_name = _generate_cl_node_name(participant, validator_id)
                el_node_name = _generate_el_node_name(participant, validator_id)
                account = pre_funded_accounts.PRE_FUNDED_ACCOUNTS[index]

                # Determine the RPC url of the first validator's CL node.
                if not first_validator_cl_rpc_url:
                    first_validator_cl_rpc_url = "http://{}:{}".format(
                        cl_node_name,
                        heimdall.HEIMDALL_RPC_PORT_NUMBER,
                    )

                # Generate the CL validator config.
                cl_validator_config = "{},{}:{}".format(
                    account.private_key,
                    cl_node_name,
                    heimdall.HEIMDALL_NODE_LISTEN_PORT_NUMBER,
                )
                cl_validator_configs.append(cl_validator_config)

                # Generate the validator CL and EL keystores.
                cl_validator_keystores.append(
                    StoreSpec(
                        src="{}/{}/config/".format(
                            constants.HEIMDALL_CONFIG_PATH, validator_id
                        ),
                        name="{}-config".format(cl_node_name, participant["el_type"]),
                    )
                )
                el_validator_keystores.append(
                    StoreSpec(
                        src="{}/{}".format(constants.BOR_CONFIG_PATH, validator_id),
                        name="{}-config".format(el_node_name),
                    ),
                )

                # Generate the EL enode url.
                enode_url = _generate_enode_url(
                    participant, account.eth_public_key[2:], el_node_name
                )
                enode_urls.append(enode_url)

                # Increment the index.
                index += 1

    return struct(
        first_validator_cl_rpc_url=first_validator_cl_rpc_url,
        cl_validator_configs_str=";".join(cl_validator_configs),
        cl_validator_keystores=cl_validator_keystores,
        el_validator_keystores=el_validator_keystores,
        enode_urls=enode_urls,
    )


def _generate_enode_url(participant, eth_public_key, el_node_name):
    return "enode://{}@{}:{}?discport=0".format(
        eth_public_key,
        el_node_name,
        bor.BOR_DISCOVERY_PORT_NUMBER,
    )


def _generate_validator_config(
    plan,
    cl_validator_configs_str,
    cl_validator_keystores,
    el_validator_keystores,
    polygon_pos_args,
):
    matic_contracts_params = polygon_pos_args["matic_contracts_params"]
    network_params = polygon_pos_args["network_params"]

    # Generate CL validators configuration such as the public/private keys and node identifiers.
    validator_config_generator_artifact = plan.upload_files(
        src=VALIDATOR_CONFIG_GENERATOR_FOLDER_PATH,
        name="l2-validator-config-generator-config",
    )

    # Generate validator configs.
    result = plan.run_sh(
        name="l2-validators-config-generator",
        image=matic_contracts_params["validator_config_generator_image"],
        env_vars={
            "HEIMDALL_ID": network_params["heimdall_id"],
            "HEIMDALL_CONFIG_PATH": constants.HEIMDALL_CONFIG_PATH,
            "BOR_CONFIG_PATH": constants.BOR_CONFIG_PATH,
            "HEIMDALL_VALIDATOR_CONFIGS": cl_validator_configs_str,
        },
        files={
            "/opt/data": validator_config_generator_artifact,
        },
        store=cl_validator_keystores
        + el_validator_keystores
        + [
            StoreSpec(
                src="{}/persistent_peers.txt".format(constants.HEIMDALL_CONFIG_PATH),
                name="l2-cl-persistent-peers",
            )
        ],
        run="bash /opt/data/validator_setup.sh",
    )
    # Artifacts are ordered to match the `StoreSpec` definitions.
    n = len(result.files_artifacts) // 2  # Assuming equal number of cl and el configs.
    cl_validator_config_artifacts = result.files_artifacts[:n]
    el_validator_config_artifacts = result.files_artifacts[n:-1]
    cl_persistent_peers_artifact = result.files_artifacts[-1]

    return struct(
        cl_configs=cl_validator_config_artifacts,
        el_configs=el_validator_config_artifacts,
        persistent_peers=cl_persistent_peers_artifact,
    )


def _read_cl_persistent_peers(plan, cl_persistent_peers):
    result = plan.run_sh(
        description="Reading CL validator node ids",
        files={
            "/opt/data": cl_persistent_peers,
        },
        # Return the result as a list instead of a string.
        run="cat /opt/data/persistent_peers.txt | tr -d '\n'",
    )
    return result.output


def _generate_cl_node_name(participant, id):
    return "l2-cl-{}-{}-{}".format(id, participant["cl_type"], participant["el_type"])


def _generate_el_node_name(participant, id):
    return "l2-el-{}-{}-{}-{}".format(
        id,
        participant["el_type"],
        participant["cl_type"],
        "validator" if participant["is_validator"] else "rpc",
    )
