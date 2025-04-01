el_shared = import_module("../el_shared.star")


# The folder where the erigon template config is stored in the repository.
ERIGON_TEMPLATE_CONFIG_FILE_PATH = "../../../static_files/erigon/config.toml"


# The folder where erigon configs are stored inside the service.
ERIGON_CONFIG_FOLDER_PATH = "/etc/erigon"
# The folder where erigon app stores data inside the service.
ERIGON_APP_DATA_FOLDER_PATH = "/var/lib/erigon"

ERIGON_DISCOVERY_PORT_ID = "discovery"
ERIGON_DISCOVERY_PORT_NUMBER = 30303


def launch(
    plan,
    el_node_name,
    participant,
    el_genesis_artifact,
    el_validator_config_artifact,
    cl_node_url,
    el_account,
    el_static_nodes,
    el_chain_id,
):
    is_validator = participant.get("is_validator")
    erigon_node_config_artifact = plan.render_templates(
        name="{}-node-config".format(el_node_name),
        config={
            "config.toml": struct(
                template=read_file(ERIGON_TEMPLATE_CONFIG_FILE_PATH),
                data={
                    # node params
                    "node_name": el_node_name,
                    "config_folder_path": ERIGON_CONFIG_FOLDER_PATH,
                    "data_folder_path": ERIGON_APP_DATA_FOLDER_PATH,
                    "is_validator": is_validator,
                    "address": el_account.eth_tendermint.address,
                    "cl_node_url": cl_node_url,
                    "log_level": participant.get("el_log_level"),
                    # network params.
                    "el_chain_id": el_chain_id,
                    "static_nodes": ",".join(el_static_nodes),
                    # ports
                    "rpc_port_number": el_shared.EL_RPC_PORT_NUMBER,
                    "ws_port_number": el_shared.EL_WS_PORT_NUMBER,
                    "metrics_port_number": el_shared.EL_METRICS_PORT_NUMBER,
                },
            ),
        },
    )

    files = {
        ERIGON_CONFIG_FOLDER_PATH: erigon_node_config_artifact,
        "/opt/data/genesis": el_genesis_artifact,
    }
    if is_validator:
        files["/opt/data/config"] = el_validator_config_artifact

    validator_cmds = [
        # Copy EL validator config inside erigon data and config folders.
        "cp /opt/data/config/password.txt {}/password.txt".format(
            ERIGON_CONFIG_FOLDER_PATH
        ),
        "cp /opt/data/config/nodekey {}/nodekey".format(ERIGON_CONFIG_FOLDER_PATH),
        "cp -r /opt/data/config/keystore {}".format(ERIGON_APP_DATA_FOLDER_PATH),
    ]
    erigon_cmd = [
        # Copy EL genesis file inside erigon config folder.
        "cp /opt/data/genesis/genesis.json {}/genesis.json".format(
            ERIGON_CONFIG_FOLDER_PATH
        ),
        # Initialise erigon.
        "erigon init --datadir {} {}/genesis.json".format(
            ERIGON_APP_DATA_FOLDER_PATH, ERIGON_CONFIG_FOLDER_PATH
        ),
        # Start erigon.
        # Note: this command attempts to start Erigon and retries if it fails.
        # The retry mechanism addresses a race condition where Erigon initially fails to
        # resolve hostnames of other nodes, as services are created sequentially;
        # after a 5-second delay, all services should be up, allowing Erigon to start
        # successfully. This is also why the port checks are disabled.
        "while ! erigon --config {}/config.toml; do echo -e '\n❌ Erigon failed to start. Retrying in five seconds...\n'; sleep 5; done".format(
            ERIGON_CONFIG_FOLDER_PATH
        ),
    ]

    return plan.add_service(
        name=el_node_name,
        config=ServiceConfig(
            image=participant.get("el_image"),
            # All port checks are disabled, see the comment above.
            ports={
                el_shared.EL_RPC_PORT_ID: PortSpec(
                    number=el_shared.EL_RPC_PORT_NUMBER,
                    application_protocol="http",
                    wait=None,
                ),
                el_shared.EL_WS_PORT_ID: PortSpec(
                    number=el_shared.EL_WS_PORT_NUMBER,
                    application_protocol="ws",
                    wait=None,
                ),
                el_shared.EL_METRICS_PORT_ID: PortSpec(
                    number=el_shared.EL_METRICS_PORT_NUMBER,
                    application_protocol="http",
                    wait=None,
                ),
                ERIGON_DISCOVERY_PORT_ID: PortSpec(
                    number=ERIGON_DISCOVERY_PORT_NUMBER,
                    application_protocol="http",
                    wait=None,
                ),
            },
            files=files,
            entrypoint=["sh", "-c"],
            cmd=[
                "&&".join(validator_cmds + erigon_cmd if is_validator else erigon_cmd)
            ],
            user=User(uid=0, gid=0),  # Run the container as root user.
        ),
    )
