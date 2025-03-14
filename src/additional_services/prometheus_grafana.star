constants = import_module("../package_io/constants.star")
contract_util = import_module("../contracts/util.star")
el_cl_launcher = import_module("../el_cl_launcher.star")

PROMETHEUS_IMAGE = "prom/prometheus:v3.2.0"
GRAFANA_VERSION = "11.5.2"
GRAFANA_DASHBOARDS = "../../static_files/grafana/dashboards"
PANOPTICHAIN_IMAGE = "ghcr.io/0xpolygon/panoptichain:v1.2.2"  # https://github.com/0xPolygon/panoptichain/releases


def get_metrics_jobs(plan):
    metrics_jobs = []
    for service in plan.get_services():
        if "metrics" not in service.ports:
            continue

        metrics_paths = ["/metrics", "/debug/metrics/prometheus"]

        for metrics_path in metrics_paths:
            metrics_jobs.append(
                {
                    "Name": service.name + metrics_path,
                    "Endpoint": "{0}:{1}".format(
                        service.ip_address, service.ports["metrics"].number
                    ),
                    "MetricsPath": metrics_path,
                }
            )

    return metrics_jobs


def get_l2_config(plan, participants):
    rpcs = {}
    heimdall_urls = {}

    participant_index = 0
    validator_index = 0

    for participant in participants:
        for _ in range(participant.get("count")):
            el_node_name = el_cl_launcher._generate_el_node_name(
                participant, participant_index + 1
            )
            el_service = plan.get_service(name=el_node_name)

            rpcs[el_node_name] = "http://{}:{}".format(
                el_service.ip_address, el_service.ports["rpc"].number
            )

            participant_index += 1
            if not participant.get("is_validator"):
                continue

            cl_node_name = el_cl_launcher._generate_cl_node_name(
                participant, validator_index + 1
            )
            cl_service = plan.get_service(name=cl_node_name)

            heimdall_urls[cl_node_name] = struct(
                tendermint="http://{}:{}".format(
                    cl_service.ip_address, cl_service.ports["rpc"].number
                ),
                heimdall="http://{}:{}".format(
                    cl_service.ip_address, cl_service.ports["http"].number
                ),
            )

            validator_index += 1

    return struct(
        rpcs=rpcs,
        heimdall_urls=heimdall_urls,
    )


def launch_panoptichain(
    plan,
    l1_rpcs,
    l1_chain_id,
    l2_participants,
    l2_chain_id,
):
    contract_addresses_artifact = plan.get_files_artifact(
        name="matic-contract-addresses"
    )
    contract_addresses = contract_util.read_contract_addresses(
        plan, contract_addresses_artifact
    )

    l2_el_genesis_artifact = plan.get_files_artifact(name="l2-el-genesis")
    state_receiver_contract_address = (
        contract_util.read_state_receiver_contract_address(plan, l2_el_genesis_artifact)
    )

    l2_config = get_l2_config(plan, l2_participants)

    panoptichain_config_artifact = plan.render_templates(
        name="panoptichain-config",
        config={
            "config.yml": struct(
                template=read_file(src="../../static_files/panoptichain/config.yml"),
                data={
                    "l1_rpcs": l1_rpcs,
                    "l2_rpcs": l2_config.rpcs,
                    "l1_chain_id": l1_chain_id,
                    "l2_chain_id": l2_chain_id,
                    "checkpoint_address": contract_addresses.get("root_chain"),
                    "state_sync_sender_address": contract_addresses.get("state_sender"),
                    "state_sync_receiver_address": state_receiver_contract_address,
                    "heimdall_urls": l2_config.heimdall_urls,
                },
            )
        },
    )

    plan.add_service(
        name="panoptichain",
        config=ServiceConfig(
            image=PANOPTICHAIN_IMAGE,
            ports={
                "metrics": PortSpec(9090, application_protocol="http"),
            },
            files={"/etc/panoptichain": panoptichain_config_artifact},
        ),
    )


def launch(
    plan,
    l1_participants,
    l1_chain_id,
    l2_participants,
    l2_chain_id,
):
    launch_panoptichain(
        plan,
        l1_participants,
        l1_chain_id,
        l2_participants,
        l2_chain_id,
    )

    metrics_jobs = get_metrics_jobs(plan)

    prometheus_url = import_module(constants.PROMETHEUS_PACKAGE).run(
        plan,
        metrics_jobs,
        name="prometheus",
        min_cpu=10,
        max_cpu=1000,
        min_memory=128,
        max_memory=2048,
        node_selectors=None,
        storage_tsdb_retention_time="1d",
        storage_tsdb_retention_size="512MB",
        image=PROMETHEUS_IMAGE,
    )

    grafana_dashboards_files_artifact = plan.upload_files(
        src=GRAFANA_DASHBOARDS, name="grafana-dashboards"
    )

    import_module(constants.GRAFANA_PACKAGE).run(
        plan,
        prometheus_url,
        name="grafana",
        grafana_version=GRAFANA_VERSION,
        grafana_dashboards_files_artifact=grafana_dashboards_files_artifact,
    )
