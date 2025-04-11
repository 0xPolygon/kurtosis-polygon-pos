cl_launcher = import_module("./cl/launcher.star")
cl_shared = import_module("./cl/shared.star")
constants = import_module("./package_io/constants.star")
el_shared = import_module("./el/shared.star")
el_launcher = import_module("./el/launcher.star")
participant_module = import_module("./participant.star")
prefunded_accounts = import_module("./prefunded_accounts/accounts.star")
wait = import_module("./wait/wait.star")


VALIDATOR_CONFIG_GENERATOR_FOLDER_PATH = "../static_files/validator"


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

    # Prepare network data and generate validator configs.
    network_data = _prepare_network_data(participants)
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
    all_participants = []
    first_cl_context = None
    for _, participant in enumerate(participants):
        is_validator = participant.get("is_validator")
        for _ in range(participant.get("count")):
            plan.print(
                "Launching participant {} with config: {}".format(
                    participant_index + 1, str(participant)
                )
            )

            # If the participant is a validator, launch the CL node and it's dedicated AMQP server.
            cl_context = {}
            if is_validator:
                cl_validator_config_artifact = validator_config_artifacts.cl_configs[
                    validator_index
                ]
                cl_context = cl_launcher.launch(
                    plan,
                    participant,
                    participant_index + 1,
                    network_params,
                    cl_genesis_artifact,
                    cl_validator_config_artifact,
                    cl_node_ids,
                    l1_rpc_url,
                )
                if not first_cl_context:
                    first_cl_context = cl_context

            # Launch the EL node.
            el_validator_config_artifact = (
                validator_config_artifacts.el_configs[validator_index]
                if is_validator
                else None
            )
            el_account = prefunded_accounts.PREFUNDED_ACCOUNTS[participant_index]
            el_chain_id = network_params.get("el_chain_id")
            el_context = el_launcher.launch(
                plan,
                participant,
                participant_index + 1,
                is_validator,
                el_genesis_artifact,
                el_validator_config_artifact,
                first_cl_context.api_url,
                el_account,
                network_data.el_static_nodes,
                el_chain_id,
            )

            # Add the node to the all_participants array.
            all_participants.append(
                participant_module.new_participant(
                    cl_type=participant.get("cl_type"),
                    el_type=participant.get("el_type"),
                    cl_context=cl_context or first_cl_context,
                    el_context=el_context,
                    is_validator=is_validator,
                )
            )

            # Increment the indexes.
            participant_index += 1
            if is_validator:
                validator_index += 1

    # Make sure that the RPC of all the participants can be reached.
    for participant in all_participants:
        cl_shared.wait_for_node_startup(
            plan,
            participant.cl_context.service_name,
        )
        el_shared.wait_for_node_startup(
            plan,
            participant.el_context.service_name,
        )

    # Wait for the devnet to reach a certain state.
    # The first producer should have committed a span.
    wait.wait_for_l2_startup(plan, first_cl_context.api_url, devnet_cl_type)

    # Return the L2 context.
    return struct(
        el_chain_id=network_params.get("el_chain_id"),
        devnet_cl_type=devnet_cl_type,
        all_participants=all_participants,
    )


def _prepare_network_data(participants):
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
                validator_account = prefunded_accounts.PREFUNDED_ACCOUNTS[
                    participant_index
                ]

                # Generate the CL validator config.
                cl_validator_config = "{},{},{},{},{}:{}".format(
                    validator_account.eth_tendermint.private_key,
                    validator_account.cometbft.address,
                    validator_account.cometbft.public_key,
                    validator_account.cometbft.private_key,
                    cl_node_name,
                    cl_shared.NODE_LISTEN_PORT_NUMBER,
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
        cl_validator_configs_str=";".join(cl_validator_configs),
        cl_validator_keystores=cl_validator_keystores,
        el_validator_keystores=el_validator_keystores,
        el_static_nodes=el_static_nodes,
    )


def _generate_enode_url(participant, eth_public_key, el_node_name):
    return "enode://{}@{}:{}?discport=0".format(
        eth_public_key,
        el_node_name,
        el_shared.DISCOVERY_PORT_NUMBER,
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
        run="bash /opt/data/setup.sh",
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
        name="cl-validator-node-ids-reader",
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
