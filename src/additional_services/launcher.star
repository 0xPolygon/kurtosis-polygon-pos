blockscout = import_module("./blockscout.star")
prometheus_grafana = import_module("./prometheus_grafana.star")
test_runner = import_module("./test_runner.star")
tx_spammer = import_module("./tx_spammer.star")
enums = import_module("../enums.star")


def launch(
    plan,
    polygon_pos_args,
    l1_context,
    l2_context,
    l2_network_params,
    l2_el_genesis_artifact,
    contract_addresses_artifact,
):
    additional_services = polygon_pos_args.get("additional_services")
    for svc in additional_services:
        if svc == enums.ADDITIONAL_SERVICES.blockscout:
            blockscout.launch(plan)
        elif svc == enums.ADDITIONAL_SERVICES.prometheus_grafana:
            prometheus_grafana.launch(
                plan,
                l1_context,
                l2_context,
                l2_el_genesis_artifact,
                contract_addresses_artifact,
            )
        elif svc == enums.ADDITIONAL_SERVICES.test_runner:
            test_runner_params = polygon_pos_args.get("test_runner_params")
            test_runner.launch(
                plan,
                test_runner_params,
                l1_context,
                l2_context,
                l2_network_params,
                l2_el_genesis_artifact,
                contract_addresses_artifact,
            )
        elif svc == enums.ADDITIONAL_SERVICES.tx_spammer:
            tx_spammer.launch(plan)
        else:
            fail("Invalid additional service: %s" % (svc))
