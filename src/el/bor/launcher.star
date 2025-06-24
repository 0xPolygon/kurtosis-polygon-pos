el_shared = import_module("../shared.star")
cl_shared = import_module("../../cl/shared.star")

# The folder where the bor template config is stored in the repository.
BOR_TEMPLATE_CONFIG_FILE_PATH = "../../../static_files/el/bor/config.toml"

# The folder where bor configs are stored inside the service.
BOR_CONFIG_FOLDER_PATH = "/etc/bor"
# The folder where bor app stores data inside the service.
BOR_APP_DATA_FOLDER_PATH = "/var/lib/bor"


def launch(
    plan,
    el_node_name,
    participant,
    el_genesis_artifact,
    el_credentials_artifact,
    cl_node_url,
    el_account,
    el_static_nodes,
    el_chain_id,
):
    # Derive Heimdall WebSocket URL from the REST API URL.
    # Example: http://l2-cl-1-heimdall:1317 -> ws://l2-cl-1-heimdall:26657/websocket
    def _generate_cl_ws_url(cl_rest_url):
        host_port = cl_rest_url
        if cl_rest_url.startswith("http://"):
            host_port = cl_rest_url.removeprefix("http://")
        elif cl_rest_url.startswith("https://"):
            host_port = cl_rest_url.removeprefix("https://")

        host_port = host_port.rstrip("/")
        host = host_port.split(":")[0]
        return "ws://{}:{}{}".format(host, cl_shared.RPC_PORT_NUMBER, "/websocket")

    cl_node_ws_url = _generate_cl_ws_url(cl_node_url)

    bor_node_config_artifact = plan.render_templates(
        name="{}-node-config".format(el_node_name),
        config={
            "config.toml": struct(
                template=read_file(BOR_TEMPLATE_CONFIG_FILE_PATH),
                data={
                    # node params
                    "node_name": el_node_name,
                    "config_folder_path": BOR_CONFIG_FOLDER_PATH,
                    "data_folder_path": BOR_APP_DATA_FOLDER_PATH,
                    "kind": participant.get("kind"),
                    "address": el_account.eth_tendermint.address,
                    "cl_node_url": cl_node_url,
                    "log_level_to_int": log_level_to_int(
                        participant.get("el_log_level")
                    ),
                    "el_enable_witness": participant.get("el_enable_witness"),
                    "el_sync_with_witness": participant.get("el_sync_with_witness"),
                    # network params
                    "static_nodes": str(el_static_nodes),
                    # ports
                    "rpc_port_number": el_shared.RPC_PORT_NUMBER,
                    "ws_port_number": el_shared.WS_PORT_NUMBER,
                    "discovery_port_number": el_shared.DISCOVERY_PORT_NUMBER,
                    "metrics_port_number": el_shared.METRICS_PORT_NUMBER,
                    "cl_node_ws_url": cl_node_ws_url,
                },
            ),
        },
    )

    bor_cmds = [
        # Copy genesis file.
        "cp /opt/data/genesis/genesis.json {}/genesis.json".format(
            BOR_CONFIG_FOLDER_PATH
        ),
        # Copy node credentials.
        "cp /opt/data/credentials/password.txt {}".format(BOR_CONFIG_FOLDER_PATH),
        "mkdir -p {}".format(BOR_APP_DATA_FOLDER_PATH),
        "cp /opt/data/credentials/nodekey {}/nodekey".format(BOR_APP_DATA_FOLDER_PATH),
        "cp -r /opt/data/credentials/keystore {}".format(BOR_APP_DATA_FOLDER_PATH),
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
                el_shared.RPC_PORT_ID: PortSpec(
                    number=el_shared.RPC_PORT_NUMBER,
                    application_protocol="http",
                    wait=None,
                ),
                el_shared.WS_PORT_ID: PortSpec(
                    number=el_shared.WS_PORT_NUMBER,
                    application_protocol="ws",
                    wait=None,
                ),
                el_shared.DISCOVERY_PORT_ID: PortSpec(
                    number=el_shared.DISCOVERY_PORT_NUMBER,
                    application_protocol="http",
                    wait=None,
                ),
                el_shared.METRICS_PORT_ID: PortSpec(
                    number=el_shared.METRICS_PORT_NUMBER,
                    application_protocol="http",
                    wait=None,
                ),
            },
            files={
                BOR_CONFIG_FOLDER_PATH: bor_node_config_artifact,
                "/opt/data/genesis": el_genesis_artifact,
                "/opt/data/credentials": el_credentials_artifact,
            },
            entrypoint=["sh", "-c"],
            cmd=["&&".join(bor_cmds)],
        ),
    )


# Bor log level must be specified using an integer instead of a string.
# https://github.com/maticnetwork/bor/blob/ceb62bb9d3b91b57579f674f5823f7becbd01df8/internal/cli/server/server.go#L86
def log_level_to_int(log_level):
    map_log_level_to_int = {
        "trace": 5,
        "debug": 4,
        "info": 3,
        "warn": 2,
        "error": 1,
        "crit": 0,
    }
    if log_level not in map_log_level_to_int:
        fail("Invalid log level: " + log_level)
    return map_log_level_to_int.get(log_level)
