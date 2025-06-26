constants = import_module("./constants.star")
math = import_module("../math/math.star")
sanity_check = import_module("./sanity_check.star")

DEFAULT_POS_CONTRACT_DEPLOYER_IMAGE = "leovct/pos-contract-deployer-node-20:ed58f8a"
DEFAULT_POS_EL_GENESIS_BUILDER_IMAGE = "leovct/pos-el-genesis-builder:96a19dd"
DEFAULT_POS_VALIDATOR_CONFIG_GENERATOR_IMAGE = "leovct/pos-validator-config-generator:1.2.3-0.2.0"  # Based on 0xpolygon/heimdall:1.2.3 and 0xpolygon/heimdall-v2:0.2.0.

DEFAULT_EL_IMAGES = {
    constants.EL_TYPE.bor: "0xpolygon/bor:2.1.1",
    constants.EL_TYPE.bor_modified_for_heimdall_v2: "leovct/bor:581a230ed-fix",  # There is no official image yet.
    constants.EL_TYPE.erigon: "erigontech/erigon:v3.0.9",
}

DEFAULT_CL_IMAGES = {
    constants.CL_TYPE.heimdall: "0xpolygon/heimdall:1.2.3",
    constants.CL_TYPE.heimdall_v2: "0xpolygon/heimdall-v2:0.2.0",
}

DEFAULT_CL_DB_IMAGE = "rabbitmq:4.1"

DEFAULT_E2E_TEST_IMAGE = "leovct/e2e:9fe80e1"

DEFAULT_ETHEREUM_PACKAGE_ARGS = {
    "participants": [
        {
            "cl_type": "lighthouse",
            "cl_image": "ethpandaops/lighthouse:unstable-6135f41",
            "el_type": "geth",
            "el_image": "ethereum/client-go:v1.15.11",
            "use_separate_vc": True,
            "vc_type": "lighthouse",
            "vc_image": "ethpandaops/lighthouse:unstable-6135f41",
            "count": 1,
        },
    ],
    "network_params": {
        "network_id": constants.DEFAULT_L1_CHAIN_ID,
        "prefunded_accounts": "",
        "preset": "minimal",
        "seconds_per_slot": 1,
    },
}

DEFAULT_POLYGON_POS_PARTICIPANT = {
    "kind": constants.PARTICIPANT_KIND.validator,
    "cl_type": constants.CL_TYPE.heimdall,
    "cl_image": DEFAULT_CL_IMAGES[constants.CL_TYPE.heimdall],
    "cl_db_image": DEFAULT_CL_DB_IMAGE,
    "cl_log_level": constants.LOG_LEVEL.info,
    "el_type": constants.EL_TYPE.bor,
    "el_image": DEFAULT_EL_IMAGES[constants.EL_TYPE.bor],
    "el_log_level": constants.LOG_LEVEL.info,
    "count": 1,
}

DEFAULT_POLYGON_POS_PACKAGE_ARGS = {
    "participants": [
        DEFAULT_POLYGON_POS_PARTICIPANT
        | {
            "kind": constants.PARTICIPANT_KIND.validator,
            "count": 2,
        },
        DEFAULT_POLYGON_POS_PARTICIPANT
        | {
            "kind": constants.PARTICIPANT_KIND.rpc,
            "count": 1,
        },
    ],
    "setup_images": {
        "contract_deployer": DEFAULT_POS_CONTRACT_DEPLOYER_IMAGE,
        "el_genesis_builder": DEFAULT_POS_EL_GENESIS_BUILDER_IMAGE,
        "validator_config_generator": DEFAULT_POS_VALIDATOR_CONFIG_GENERATOR_IMAGE,
    },
    "network_params": {
        # Admin account generated using `cast wallet new`.
        # This private key is used to deploy Polygon PoS contracts on both L1 and L2.
        "admin_private_key": "0xd40311b5a5ca5eaeb48dfba5403bde4993ece8eccf4190e98e19fcd4754260ea",
        # Validators params.
        "preregistered_validator_keys_mnemonic": "sibling lend brave explain wait orbit mom alcohol disorder message grace sun",
        "validator_stake_amount_eth": 10000,  # in ether
        "validator_top_up_fee_amount_eth": 2000,  # in ether
        # CL network params.
        "cl_chain_id": constants.DEFAULT_CL_CHAIN_ID,
        "cl_span_poll_interval": "0m15s",
        "cl_checkpoint_poll_interval": "1m0s",
        # EL network params.
        "el_chain_id": constants.DEFAULT_EL_CHAIN_ID,
        "el_block_interval_seconds": 2,
        "el_sprint_duration": 16,
        "el_span_duration": 128,
        "el_gas_limit": math.pow(10, 7),
    },
    "additional_services": [
        constants.ADDITIONAL_SERVICES.test_runner,
    ],
    "test_runner_params": {
        "image": DEFAULT_E2E_TEST_IMAGE,
    },
}

DEFAULT_DEV_ARGS = {
    "should_deploy_l1": True,
    "should_deploy_matic_contracts": True,
}


def input_parser(plan, input_args):
    plan.print("Parsing the L1 input args")
    ethereum_input_args = input_args.get("ethereum_package", {})
    ethereum_args = _parse_ethereum_args(plan, ethereum_input_args)
    plan.print("L1 input args parsed: {}".format(str(ethereum_args)))

    plan.print("Parsing the L2 input args")
    polygon_pos_input_args = input_args.get("polygon_pos_package", {})
    (polygon_pos_args, devnet_cl_type) = _parse_polygon_pos_args(
        plan, polygon_pos_input_args
    )
    plan.print("L2 input args parsed: {}".format(str(polygon_pos_args)))

    plan.print("Parsing the dev input args")
    dev_input_args = input_args.get("dev", {})
    dev_args = _parse_dev_args(plan, dev_input_args)
    plan.print("Dev input args parsed: {}".format(str(dev_args)))

    return (ethereum_args, polygon_pos_args, dev_args, devnet_cl_type)


def _parse_ethereum_args(plan, ethereum_args):
    # Create a mutable copy of ethereum_args.
    if ethereum_args:
        ethereum_args = dict(ethereum_args)

    # Set default params if not provided.
    if "network_params" not in ethereum_args:
        ethereum_args = dict(DEFAULT_ETHEREUM_PACKAGE_ARGS)

    for k, v in DEFAULT_ETHEREUM_PACKAGE_ARGS.get("network_params", {}).items():
        ethereum_args.get("network_params", {}).setdefault(k, v)

    # Sort the dict and return the result.
    return _sort_dict_by_values(ethereum_args)


def _parse_polygon_pos_args(plan, polygon_pos_args):
    # Create a mutable copy of polygon_pos_args.
    if polygon_pos_args:
        polygon_pos_args = dict(polygon_pos_args)

    # Parse the polygon pos input args and set defaults if needed.
    result = {}

    participants = polygon_pos_args.get("participants", [])
    result["participants"] = _parse_participants(participants)
    devnet_cl_type = _get_devnet_cl_type(result["participants"])

    setup_images = polygon_pos_args.get("setup_images", {})
    result["setup_images"] = _parse_setup_images(setup_images)

    network_params = polygon_pos_args.get("network_params", {})
    result["network_params"] = _parse_network_params(network_params)

    additional_services = polygon_pos_args.get("additional_services", [])
    result["additional_services"] = _parse_additional_services(additional_services)

    is_test_runner_deployed = (
        constants.ADDITIONAL_SERVICES.test_runner in result["additional_services"]
    )
    test_runner_params = polygon_pos_args.get("test_runner_params", {})
    result["test_runner_params"] = _parse_test_runner_params(
        is_test_runner_deployed, test_runner_params
    )

    # Sanity check and return the result.
    sanity_check.sanity_check_polygon_args(plan, result)
    return (_sort_dict_by_values(result), devnet_cl_type)


def _parse_dev_args(plan, dev_args):
    # Create a mutable copy of dev_args.
    if dev_args:
        dev_args = dict(dev_args)

    # Set default params if not provided.
    if "should_deploy_l1" not in dev_args:
        dev_args["should_deploy_l1"] = DEFAULT_DEV_ARGS.get("should_deploy_l1", True)

    if "should_deploy_matic_contracts" not in dev_args:
        dev_args["should_deploy_matic_contracts"] = DEFAULT_DEV_ARGS.get(
            "should_deploy_matic_contracts", True
        )

    # Sanity check and return the result.
    sanity_check.sanity_check_dev_args(plan, dev_args)
    return _sort_dict_by_values(dev_args)


def _parse_participants(participants):
    devnet_cl_type = ""
    participants_with_defaults = []

    # Set default participant if not provided.
    if len(participants) == 0:
        participants = DEFAULT_POLYGON_POS_PACKAGE_ARGS.get("participants", [])

    for p in participants:
        # Create a mutable copy of participant.
        p = dict(p)

        # Set default CL image based on `cl_type` if provided
        cl_type = p.get("cl_type", "")
        cl_image = p.get("cl_image", "")
        if cl_type and not cl_image:
            if cl_type == constants.CL_TYPE.heimdall:
                p["cl_image"] = DEFAULT_CL_IMAGES[constants.CL_TYPE.heimdall]
            elif cl_type == constants.CL_TYPE.heimdall_v2:
                p["cl_image"] = DEFAULT_CL_IMAGES[constants.CL_TYPE.heimdall_v2]
            else:
                fail("Invalid CL client type: '{}'.".format(cl_type))

        # Set default EL image based on `el_type` if provided.
        el_type = p.get("el_type", "")
        el_image = p.get("el_image", "")
        if el_type and not el_image:
            if el_type == constants.EL_TYPE.bor:
                if cl_type == constants.CL_TYPE.heimdall:
                    p["el_image"] = DEFAULT_EL_IMAGES[constants.EL_TYPE.bor]
                elif cl_type == constants.CL_TYPE.heimdall_v2:
                    p["el_image"] = DEFAULT_EL_IMAGES[
                        constants.EL_TYPE.bor_modified_for_heimdall_v2
                    ]
                else:
                    fail("Invalid CL client type: '{}'.".format(cl_type))
            elif el_type == constants.EL_TYPE.erigon:
                p["el_image"] = DEFAULT_EL_IMAGES[constants.EL_TYPE.erigon]
            else:
                fail("Invalid EL client type: '{}'.".format(el_type))

        # Fill in any missing fields with default values.
        for k, v in DEFAULT_POLYGON_POS_PARTICIPANT.items():
            p.setdefault(k, v)

        # Set devnet CL type using the first participant CL type.
        if devnet_cl_type == "":
            devnet_cl_type = p.get("cl_type")

        # Make sure that CL types have not been mixed.
        if p.get("cl_type") != devnet_cl_type:
            fail(
                'Mixing different CL types is not supported. Got "{}" and "{}".'.format(
                    devnet_cl_type, cl_type
                )
            )

        # Assign the modified dictionary back to the list.
        participants_with_defaults.append(p)

    # Sort each participant dictionary and return the result
    return [_sort_dict_by_values(p) for p in participants_with_defaults]


def _get_devnet_cl_type(participants):
    # Determine the devnet CL type to be able to select the appropriate validator address format later.
    return participants[0].get("cl_type")


def _parse_setup_images(setup_images):
    # Create a mutable copy of setup_images.
    if setup_images:
        # Create a mutable copy of setup_images.
        setup_images = dict(setup_images)
    else:
        # Set default matic contracts params if not provided.
        setup_images = dict(DEFAULT_POLYGON_POS_PACKAGE_ARGS.get("setup_images", {}))

    for k, v in DEFAULT_POLYGON_POS_PACKAGE_ARGS.get("setup_images", {}).items():
        setup_images.setdefault(k, v)

    # Sort the dict and return the result.
    return _sort_dict_by_values(setup_images)


def _parse_network_params(network_params):
    if network_params:
        # Create a mutable copy of network_params.
        network_params = dict(network_params)
    else:
        # Set default network params if not provided.
        network_params = dict(
            DEFAULT_POLYGON_POS_PACKAGE_ARGS.get("network_params", {})
        )

    for k, v in DEFAULT_POLYGON_POS_PACKAGE_ARGS.get("network_params", {}).items():
        network_params.setdefault(k, v)

    # Sort the dict and return the result.
    return _sort_dict_by_values(network_params)


def _parse_additional_services(additional_services):
    # Set default additional services if not provided.
    if len(additional_services) == 0:
        additional_services = DEFAULT_POLYGON_POS_PACKAGE_ARGS.get(
            "additional_services", []
        )
    return additional_services


def _parse_test_runner_params(is_test_runner_deployed, test_runner_params):
    # If the test runner is not deployed, return an empty dict.
    if not is_test_runner_deployed:
        return {}

    # Create a mutable copy of test_runner_params.
    if test_runner_params:
        test_runner_params = dict(test_runner_params)
    else:
        # Set default test runner params if not provided.
        test_runner_params = dict(
            DEFAULT_POLYGON_POS_PACKAGE_ARGS.get("test_runner_params", {})
        )

    for k, v in DEFAULT_POLYGON_POS_PACKAGE_ARGS.get("test_runner_params", {}).items():
        test_runner_params.setdefault(k, v)

    # Sort the dict and return the result.
    return _sort_dict_by_values(test_runner_params)


def _sort_dict_by_values(d):
    sorted_items = sorted(d.items(), key=lambda x: x[0])
    return {k: v for k, v in sorted_items}
