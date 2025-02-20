bor = import_module("./el/bor/bor_launcher.star")
cl_shared = import_module("./cl/cl_shared.star")
constants = import_module("./package_io/constants.star")
el_shared = import_module("./el/el_shared.star")
erigon = import_module("./el/erigon/erigon_launcher.star")
heimdall = import_module("./cl/heimdall/heimdall_launcher.star")
heimdall_v2 = import_module("./cl/heimdall_v2/heimdall_v2_launcher.star")
pre_funded_accounts = import_module(
    "./prelaunch_data_generator/genesis_constants/pre_funded_accounts.star"
)


VALIDATOR_CONFIG_GENERATOR_FOLDER_PATH = "../static_files/validator"

# Port identifiers and numbers.
RABBITMQ_AMQP_PORT_ID = "amqp"
RABBITMQ_AMQP_PORT_NUMBER = 5672


def launch(
    plan,
    participants,
    polygon_pos_args,
    el_genesis_artifact,
    cl_genesis_artifact,
    l1_rpc_url,
    devnet_cl_type,
):
    network_params = polygon_pos_args.get("network_params")
    setup_images = polygon_pos_args.get("setup_images")

    el_launchers = {
        "bor": {
            "launch_method": bor.launch,
        },
        "bor-modified-for-heimdall-v2": {
            "launch_method": bor.launch,
        },
        "erigon": {
            "launch_method": erigon.launch,
        },
    }

    cl_launchers = {
        "heimdall": {
            "launch_method": heimdall.launch,
        },
        "heimdall-v2": {
            "launch_method": heimdall_v2.launch,
        },
    }

    # Prepare network data and generate validator configs.
    network_data = _prepare_network_data(participants)
    cl_api_url = network_data.first_validator_cl_api_url
    validator_config_artifacts = _generate_validator_config(
        plan,
        network_data.cl_validator_configs_str,
        network_data.cl_validator_keystores,
        network_data.el_validator_keystores,
        polygon_pos_args,
        devnet_cl_type,
    )
    cl_node_ids = _read_cl_persistent_peers(
        plan, validator_config_artifacts.persistent_peers
    )

    # Start each participant.
    participant_index = 0
    validator_index = 0
    for _, participant in enumerate(participants):
        for _ in range(participant.get("count")):
            # Get the CL launcher.
            cl_type = participant.get("cl_type")
            if cl_type not in cl_launchers:
                fail(
                    "Unsupported CL launcher '{0}', need one of '{1}'".format(
                        cl_type, ",".join(cl_launchers.keys())
                    )
                )
            cl_node_name = _generate_cl_node_name(participant, participant_index + 1)
            cl_launch_method = cl_launchers[cl_type]["launch_method"]

            # Get the EL launcher.
            el_type = participant.get("el_type")
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

            # If the participant is a validator, launch the CL node and it's dedicated AMQP server.
            if participant.get("is_validator"):
                rabbitmq_name = _generate_amqp_name(participant_index + 1)
                rabbitmq_service = plan.add_service(
                    name=rabbitmq_name,
                    config=ServiceConfig(
                        image=participant.get("cl_db_image"),
                        ports={
                            RABBITMQ_AMQP_PORT_ID: PortSpec(
                                number=RABBITMQ_AMQP_PORT_NUMBER,
                                application_protocol="amqp",
                            )
                        },
                    ),
                )
                rabbitmq_amqp_port = rabbitmq_service.ports[RABBITMQ_AMQP_PORT_ID]
                rabbitmq_url = "amqp://{}:{}@{}:{}".format(
                    constants.RABBITMQ_USERNAME,
                    constants.RABBITMQ_PASSWORD,
                    rabbitmq_service.name,
                    rabbitmq_amqp_port.number,
                )

                cl_context = cl_launch_method(
                    plan,
                    cl_node_name,
                    participant,
                    network_params,
                    cl_genesis_artifact,
                    validator_config_artifacts.cl_configs[validator_index],
                    cl_node_ids,
                    l1_rpc_url,
                    "http://{}:{}".format(el_node_name, el_shared.EL_RPC_PORT_NUMBER),
                    rabbitmq_url,
                )
                cl_api_url = cl_context.ports[cl_shared.CL_REST_API_PORT_ID].url

            # Launch the EL node.
            el_validator_config_artifact = (
                validator_config_artifacts.el_configs[validator_index]
                if participant.get("is_validator")
                else None
            )
            el_context = el_launch_method(
                plan,
                el_node_name,
                participant,
                el_genesis_artifact,
                el_validator_config_artifact,
                cl_api_url,
                pre_funded_accounts.PRE_FUNDED_ACCOUNTS[participant_index],
                network_data.el_static_nodes,
                network_params.get("el_chain_id"),
            )

            # Increment the indexes.
            participant_index += 1
            if participant.get("is_validator"):
                validator_index += 1


def _prepare_network_data(participants):
    # The API url of the first validator's CL node.
    first_validator_cl_api_url = ""
    # An array of strings containing validator configurations.
    # Each string should follow the format: "<private_key>,<p2p_url>".
    cl_validator_configs = []
    # An array of keystores for CL and EL validators.
    cl_validator_keystores = []
    el_validator_keystores = []
    # An array of EL enode URLs.
    el_static_nodes = []

    # Iterate through all participants in the network and generate necessary configurations.
    participant_index = 0
    validator_index = 0
    for _, participant in enumerate(participants):
        for _ in range(participant.get("count")):
            if participant.get("is_validator"):
                cl_node_name = _generate_cl_node_name(
                    participant, participant_index + 1
                )
                el_node_name = _generate_el_node_name(
                    participant, participant_index + 1
                )
                validator_account = pre_funded_accounts.PRE_FUNDED_ACCOUNTS[
                    participant_index
                ]

                # Determine the url of the API of the first validator's CL node.
                if not first_validator_cl_api_url:
                    first_validator_cl_api_url = "http://{}:{}".format(
                        cl_node_name,
                        cl_shared.CL_REST_API_PORT_NUMBER,
                    )

                # Generate the CL validator config.
                cl_validator_config = "{},{},{},{},{}:{}".format(
                    validator_account.eth_tendermint.private_key,
                    validator_account.cometbft.address,
                    validator_account.cometbft.public_key,
                    validator_account.cometbft.private_key,
                    cl_node_name,
                    cl_shared.CL_NODE_LISTEN_PORT_NUMBER,
                )
                cl_validator_configs.append(cl_validator_config)

                # Generate the validator CL and EL keystores.
                cl_validator_keystores.append(
                    StoreSpec(
                        src="{}/{}/config/".format(
                            constants.CL_CLIENT_CONFIG_PATH, validator_index + 1
                        ),
                        name="{}-config".format(cl_node_name),
                    )
                )
                el_validator_keystores.append(
                    StoreSpec(
                        src="{}/{}".format(
                            constants.EL_CLIENT_CONFIG_PATH, validator_index + 1
                        ),
                        name="{}-config".format(el_node_name),
                    ),
                )

                # Generate the EL enode url.
                enode_url = _generate_enode_url(
                    participant,
                    validator_account.eth_tendermint.public_key.removeprefix("0x"),
                    el_node_name,
                )
                el_static_nodes.append(enode_url)

                # Increment the validator index.
                validator_index += 1

            # Increment the participant index.
            participant_index += 1

    return struct(
        first_validator_cl_api_url=first_validator_cl_api_url,
        cl_validator_configs_str=";".join(cl_validator_configs),
        cl_validator_keystores=cl_validator_keystores,
        el_validator_keystores=el_validator_keystores,
        el_static_nodes=el_static_nodes,
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
    devnet_cl_type,
):
    setup_images = polygon_pos_args.get("setup_images")
    network_params = polygon_pos_args.get("network_params")

    # Generate CL validators configuration such as the public/private keys and node identifiers.
    validator_config_generator_artifact = plan.upload_files(
        src=VALIDATOR_CONFIG_GENERATOR_FOLDER_PATH,
        name="l2-validator-config-generator-config",
    )

    # Generate validator configs.
    result = plan.run_sh(
        name="l2-validators-config-generator",
        image=setup_images.get("validator_config_generator"),
        env_vars={
            "DEVNET_CL_TYPE": devnet_cl_type,
            "CL_CHAIN_ID": network_params.get("cl_chain_id"),
            "CL_CLIENT_CONFIG_PATH": constants.CL_CLIENT_CONFIG_PATH,
            "EL_CLIENT_CONFIG_PATH": constants.EL_CLIENT_CONFIG_PATH,
            "CL_VALIDATORS_CONFIGS": cl_validator_configs_str,
        },
        files={
            "/opt/data": validator_config_generator_artifact,
        },
        store=cl_validator_keystores
        + el_validator_keystores
        + [
            StoreSpec(
                src="{}/persistent_peers.txt".format(constants.CL_CLIENT_CONFIG_PATH),
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


def _read_cl_persistent_peers(plan, cl_persistent_peers_artifact):
    result = plan.run_sh(
        description="Reading CL validator node ids",
        files={
            "/opt/data": cl_persistent_peers_artifact,
        },
        # Return the result as a list instead of a string.
        run="cat /opt/data/persistent_peers.txt | tr -d '\n'",
    )
    return result.output


def _generate_cl_node_name(participant, id):
    return "l2-cl-{}-{}-{}-validator".format(
        id, participant.get("cl_type"), participant.get("el_type")
    )


def _generate_amqp_name(id):
    return "rabbitmq-l2-cl-{}-validator".format(id)


def _generate_el_node_name(participant, id):
    return "l2-el-{}-{}-{}-{}".format(
        id,
        participant.get("el_type"),
        participant.get("cl_type"),
        "validator" if participant.get("is_validator") else "rpc",
    )
