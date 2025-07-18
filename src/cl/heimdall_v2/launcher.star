cl_shared = import_module("../shared.star")


# The folder where the heimdall templates are stored in the repository.
HEIMDALL_TEMPLATES_FOLDER_PATH = "../../../static_files/cl/heimdall_v2"


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
                    "cl_environment": network_params.get("cl_environment"),
                    "span_poll_interval": network_params.get("cl_span_poll_interval"),
                    "checkpoint_poll_interval": network_params.get(
                        "cl_checkpoint_poll_interval"
                    ),
                    # URLs.
                    "amqp_url": amqp_url,
                    "el_rpc_url": el_rpc_url,
                    "l1_rpc_url": l1_rpc_url,
                    # Port numbers.
                    "rest_api_port_number": cl_shared.REST_API_PORT_NUMBER,
                    "grpc_port_number": cl_shared.GRPC_PORT_NUMBER,
                    "rpc_port_number": cl_shared.RPC_PORT_NUMBER,
                },
            ),
            "client.toml": struct(
                template=read_file(
                    "{}/client.toml".format(HEIMDALL_TEMPLATES_FOLDER_PATH),
                ),
                data={
                    "cl_chain_id": network_params.get("cl_chain_id"),
                    "rpc_port_number": cl_shared.RPC_PORT_NUMBER,
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
                    "proxy_app_port_number": cl_shared.PROXY_LISTEN_PORT_NUMBER,
                    "rpc_port_number": cl_shared.RPC_PORT_NUMBER,
                    "p2p_listen_port_number": cl_shared.NODE_LISTEN_PORT_NUMBER,
                    "metrics_port_number": cl_shared.METRICS_PORT_NUMBER,
                },
            ),
        },
    )

    return plan.add_service(
        name="{}".format(cl_node_name),
        config=ServiceConfig(
            image=participant.get("cl_image"),
            ports={
                cl_shared.REST_API_PORT_ID: PortSpec(
                    number=cl_shared.REST_API_PORT_NUMBER,
                    application_protocol="http",
                ),
                cl_shared.GRPC_PORT_ID: PortSpec(
                    number=cl_shared.GRPC_PORT_NUMBER,
                    application_protocol="grpc",
                ),
                cl_shared.NODE_LISTEN_PORT_ID: PortSpec(
                    number=cl_shared.NODE_LISTEN_PORT_NUMBER,
                    application_protocol="http",
                ),
                cl_shared.RPC_PORT_ID: PortSpec(
                    number=cl_shared.RPC_PORT_NUMBER,
                    application_protocol="http",
                ),
                cl_shared.METRICS_PORT_ID: PortSpec(
                    number=cl_shared.METRICS_PORT_NUMBER,
                    application_protocol="http",
                ),
            },
            files={
                "{}/config".format(
                    cl_shared.CONFIG_FOLDER_PATH
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
                            cl_shared.CONFIG_FOLDER_PATH
                        ),
                        "mkdir {}/data".format(cl_shared.CONFIG_FOLDER_PATH),
                        "cp /opt/data/config/priv_validator_state.json {}/data/priv_validator_state.json".format(
                            cl_shared.CONFIG_FOLDER_PATH
                        ),
                        # Heimdall-v2 requires that the `round` property of priv_validator_state.json be of type int32.
                        'sed -i \'s/"round": "\\([0-9]*\\)"/"round": \\1/\' {}/data/priv_validator_state.json'.format(
                            cl_shared.CONFIG_FOLDER_PATH
                        ),
                        # Start heimdall.
                        # Note: this command attempts to start Heimdalld and retries if it fails.
                        # The retry mechanism addresses a race condition where Heimdalld initially fails to
                        # resolve hostnames of other nodes, as services are created sequentially;
                        # after a 5-second delay, all services should be up, allowing Heimdalld to start
                        # successfully.
                        "while ! heimdalld start --all --bridge --rest-server --home {}; do echo -e '\\n❌ Heimdalld failed to start. Retrying in five seconds...\\n'; sleep 5; done".format(
                            cl_shared.CONFIG_FOLDER_PATH,
                        ),
                    ]
                )
            ],
        ),
    )
