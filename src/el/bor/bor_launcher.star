# Port identifiers and numbers.
BOR_RPC_PORT_ID = "rpc"
BOR_RPC_PORT_NUMBER = 8545

BOR_WS_PORT_ID = "ws"
BOR_WS_PORT_NUMBER = 8546

BOR_DISCOVERY_PORT_ID = "discovery"
BOR_DISCOVERY_PORT_NUMBER = 30303

BOR_METRICS_PORT_ID = "metrics"
BOR_METRICS_PORT_NUMBER = 7071


# The folder where the bor template config is stored in the repository.
BOR_TEMPLATE_CONFIG_FILE_PATH = "../../../static_files/bor/config.toml"

# The folder where bor configs are stored inside the service.
BOR_CONFIG_FOLDER_PATH = "/etc/bor"
# The folder where bor app stores data inside the service.
BOR_APP_DATA_FOLDER_PATH = "/var/lib/bor"


def launch(
    plan,
    el_node_name,
    participant,
    el_genesis_artifact,
    el_validator_config_artifact,
    cl_node_url,
    el_account,
    el_static_nodes,
):
    is_validator = participant.get("is_validator", False)
    bor_node_config_artifactconfig_artifacts = plan.render_templates(
        name="{}-node-config".format(el_node_name),
        config={
            "config.toml": struct(
                template=read_file(BOR_TEMPLATE_CONFIG_FILE_PATH),
                data={
                    # node params
                    "node_name": el_node_name,
                    "config_folder_path": BOR_CONFIG_FOLDER_PATH,
                    "data_folder_path": BOR_APP_DATA_FOLDER_PATH,
                    "is_validator": is_validator,
                    "address": el_account.eth_tendermint.address,
                    "static_nodes": str(el_static_nodes),
                    "cl_node_url": cl_node_url,
                    # ports
                    "rpc_port_number": BOR_RPC_PORT_NUMBER,
                    "ws_port_number": BOR_WS_PORT_NUMBER,
                    "discovery_port_number": BOR_DISCOVERY_PORT_NUMBER,
                    "metrics_port_number": BOR_METRICS_PORT_NUMBER,
                },
            ),
        },
    )

    files = {
        BOR_CONFIG_FOLDER_PATH: bor_node_config_artifactconfig_artifacts,
        "/opt/data/genesis": el_genesis_artifact,
    }
    if is_validator:
        files["/opt/data/config"] = el_validator_config_artifact

    validator_cmds = [
        # Copy EL validator config inside bor data and config folders.
        "cp /opt/data/config/password.txt {}".format(BOR_CONFIG_FOLDER_PATH),
        "mkdir -p {}/bor".format(BOR_APP_DATA_FOLDER_PATH),
        "cp /opt/data/config/nodekey {}/bor/nodekey".format(BOR_APP_DATA_FOLDER_PATH),
        "cp -r /opt/data/config/keystore {}".format(BOR_APP_DATA_FOLDER_PATH),
    ]
    bor_cmds = [
        # Copy EL genesis file inside bor config folder.
        "cp /opt/data/genesis/genesis.json {}".format(BOR_CONFIG_FOLDER_PATH),
        # Start bor.
        # Note: this command attempts to start Bor and retries if it fails.
        # The retry mechanism addresses a race condition where Bor initially fails to
        # resolve hostnames of other nodes, as services are created sequentially;
        # after a 5-second delay, all services should be up, allowing Bor to start
        # successfully. This is also why the port checks are disabled.
        "while ! bor server --config {}/config.toml; do echo -e '\n❌ Bor failed to start. Retrying in five seconds...\n'; sleep 5; done".format(
            BOR_CONFIG_FOLDER_PATH
        ),
    ]

    return plan.add_service(
        name=el_node_name,
        config=ServiceConfig(
            image=participant.get("el_image"),
            # All port checks are disabled, see the comment above.
            ports={
                BOR_RPC_PORT_ID: PortSpec(
                    number=BOR_RPC_PORT_NUMBER,
                    application_protocol="http",
                    wait=None,
                ),
                BOR_WS_PORT_ID: PortSpec(
                    number=BOR_WS_PORT_NUMBER,
                    application_protocol="ws",
                    wait=None,
                ),
                BOR_DISCOVERY_PORT_ID: PortSpec(
                    number=BOR_DISCOVERY_PORT_NUMBER,
                    application_protocol="http",
                    wait=None,
                ),
                BOR_METRICS_PORT_ID: PortSpec(
                    number=BOR_METRICS_PORT_NUMBER,
                    application_protocol="http",
                    wait=None,
                ),
            },
            files=files,
            entrypoint=["sh", "-c"],
            cmd=["&&".join(validator_cmds + bor_cmds if is_validator else bor_cmds)],
        ),
    )
