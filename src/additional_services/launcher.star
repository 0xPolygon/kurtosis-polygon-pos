blockscout = import_module("./blockscout.star")
constants = import_module("../config/constants.star")
prometheus_grafana = import_module("./prometheus_grafana.star")
test_runner = import_module("./test_runner.star")
tx_spammer = import_module("./tx_spammer.star")


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
        if svc == constants.ADDITIONAL_SERVICES.blockscout:
            blockscout.launch(plan)
        elif svc == constants.ADDITIONAL_SERVICES.prometheus_grafana:
            prometheus_grafana.launch(
                plan,
                l1_context,
                l2_context,
                l2_el_genesis_artifact,
                contract_addresses_artifact,
            )
        elif svc == constants.ADDITIONAL_SERVICES.test_runner:
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
        elif svc == constants.ADDITIONAL_SERVICES.tx_spammer:
            tx_spammer.launch(plan)
        else:
            fail("Invalid additional service: %s" % (svc))
