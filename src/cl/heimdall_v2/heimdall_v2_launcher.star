cl_shared = import_module("../cl_shared.star")


# The folder where the heimdall templates are stored in the repository.
HEIMDALL_TEMPLATES_FOLDER_PATH = "../../../static_files/heimdall_v2"


def launch(
    plan,
    cl_node_name,
    participant,
    network_params,
    cl_genesis_artifact,
    cl_validator_config_artifact,
    cl_node_ids,
    l1_rpc_url,
    el_rpc_url,
    amqp_url,
):
    heimdall_node_config_artifacts = plan.render_templates(
        name="{}-node-config".format(cl_node_name),
        config={
            "app.toml": struct(
                template=read_file(
                    "{}/app.toml".format(HEIMDALL_TEMPLATES_FOLDER_PATH)
                ),
                data={
                    # Network params.
                    "span_poll_interval": network_params.get(
                        "cl_span_poll_interval", ""
                    ),
                    "checkpoint_poll_interval": network_params[
                        "cl_checkpoint_poll_interval"
                    ],
                    # URLs.
                    "amqp_url": amqp_url,
                    "el_rpc_url": el_rpc_url,
                    "l1_rpc_url": l1_rpc_url,
                    # Port numbers.
                    "rest_api_port_number": cl_shared.CL_REST_API_PORT_NUMBER,
                    "grpc_port_number": cl_shared.CL_GRPC_PORT_NUMBER,
                    "cometbft_rpc_port_number": cl_shared.CL_RPC_PORT_NUMBER,
                },
            ),
            "client.toml": struct(
                template=read_file(
                    "{}/client.toml".format(HEIMDALL_TEMPLATES_FOLDER_PATH),
                ),
                data={
                    "cl_chain_id": network_params.get("cl_chain_id"),
                    "cometbft_rpc_port_number": cl_shared.CL_RPC_PORT_NUMBER,
                },
            ),
            "config.toml": struct(
                template=read_file(
                    "{}/config.toml".format(HEIMDALL_TEMPLATES_FOLDER_PATH)
                ),
                data={
                    # Node params.
                    "moniker": cl_node_name,
                    "log_level": participant.get("cl_log_level"),
                    "persistent_peers": cl_node_ids,
                    # Port numbers.
                    "proxy_app_port_number": cl_shared.CL_PROXY_LISTEN_PORT_NUMBER,
                    "cometbft_rpc_port_number": cl_shared.CL_RPC_PORT_NUMBER,
                    "p2p_listen_port_number": cl_shared.CL_NODE_LISTEN_PORT_NUMBER,
                    "metrics_port_number": cl_shared.CL_METRICS_PORT_NUMBER,
                },
            ),
        },
    )

    return plan.add_service(
        name="{}".format(cl_node_name),
        config=ServiceConfig(
            image=participant.get("cl_image"),
            ports={
                cl_shared.CL_REST_API_PORT_ID: PortSpec(
                    number=cl_shared.CL_REST_API_PORT_NUMBER,
                    application_protocol="http",
                ),
                cl_shared.CL_GRPC_PORT_ID: PortSpec(
                    number=cl_shared.CL_GRPC_PORT_NUMBER,
                    application_protocol="grpc",
                ),
                cl_shared.CL_NODE_LISTEN_PORT_ID: PortSpec(
                    number=cl_shared.CL_NODE_LISTEN_PORT_NUMBER,
                    application_protocol="http",
                ),
                cl_shared.CL_RPC_PORT_ID: PortSpec(
                    number=cl_shared.CL_RPC_PORT_NUMBER,
                    application_protocol="http",
                ),
                cl_shared.CL_METRICS_PORT_ID: PortSpec(
                    number=cl_shared.CL_METRICS_PORT_NUMBER,
                    application_protocol="http",
                ),
            },
            files={
                "{}/config".format(
                    cl_shared.CL_CONFIG_FOLDER_PATH
                ): heimdall_node_config_artifacts,
                "/opt/data/genesis": cl_genesis_artifact,
                "/opt/data/config": cl_validator_config_artifact,
            },
            entrypoint=["sh", "-c"],
            cmd=[
                "&& ".join(
                    [
                        # Copy CL validator config inside heimdall config folder.
                        "cp /opt/data/genesis/genesis.json /opt/data/config/node_key.json /opt/data/config/priv_validator_key.json {}/config/".format(
                            cl_shared.CL_CONFIG_FOLDER_PATH
                        ),
                        "mkdir {}/data".format(cl_shared.CL_CONFIG_FOLDER_PATH),
                        "cp /opt/data/config/priv_validator_state.json {}/data/priv_validator_state.json".format(
                            cl_shared.CL_CONFIG_FOLDER_PATH
                        ),
                        # Heimdall-v2 requires that the `round` property of priv_validator_state.json is of type int32 whereas heimdall-v1 asks for a string.
                        'sed -i \'s/"round": "\\([0-9]*\\)"/"round": \\1/\' {}/data/priv_validator_state.json'.format(
                            cl_shared.CL_CONFIG_FOLDER_PATH
                        ),
                        # Start heimdall.
                        "heimdalld start --all --bridge --rest-server --home {}".format(
                            cl_shared.CL_CONFIG_FOLDER_PATH,
                        ),
                    ]
                )
            ],
        ),
    )
