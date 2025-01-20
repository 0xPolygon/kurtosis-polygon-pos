constants = import_module("./constants.star")
math = import_module("../math/math.star")
sanity_check = import_module("./sanity_check.star")

DEFAULT_POS_CONTRACT_DEPLOYER_IMAGE = "leovct/pos-contract-deployer:node-16"
DEFAULT_POS_EL_GENESIS_BUILDER_IMAGE = "leovct/pos-el-genesis-builder:node-16"
DEFAULT_POS_VALIDATOR_CONFIG_GENERATOR_IMAGE = (
    "leovct/pos-validator-config-generator:1.0.10"  # Based on 0xpolygon/heimdall:1.0.10
)

DEFAULT_EL_IMAGES = {
    constants.EL_TYPE.bor: "0xpolygon/bor:1.5.4",
    constants.EL_TYPE.erigon: "erigontech/erigon:v2.60.10",
}

DEFAULT_CL_IMAGES = {
    constants.CL_TYPE.heimdall: "0xpolygon/heimdall:1.0.10",
    constants.CL_TYPE.heimdall_v2: "leovct/heimdall-v2:3138e07",  # There is no official image yet.
}

DEFAULT_CL_DB_IMAGE = "rabbitmq:4.0.5"

DEFAULT_ETHEREUM_PACKAGE_ARGS = {
    "participants": [
        {
            "el_type": "geth",
            "el_image": "ethereum/client-go:v1.14.12",
            "cl_type": "lighthouse",
            "cl_image": "sigp/lighthouse:v6.0.0",
            "use_separate_vc": True,
            "vc_type": "lighthouse",
            "vc_image": "sigp/lighthouse:v6.0.0",
            "count": 1,
        },
    ],
    "network_params": {
        "preset": "minimal",
        "seconds_per_slot": 1,
    },
}

DEFAULT_POLYGON_POS_PARTICIPANT = {
    "el_type": constants.EL_TYPE.bor,
    "el_image": DEFAULT_EL_IMAGES[constants.EL_TYPE.bor],
    "el_log_level": "info",
    "cl_type": constants.CL_TYPE.heimdall,
    "cl_image": DEFAULT_CL_IMAGES[constants.CL_TYPE.heimdall],
    "cl_log_level": "info",
    "cl_db_image": DEFAULT_CL_DB_IMAGE,
    "is_validator": True,
    "count": 1,
}

DEFAULT_POLYGON_POS_PACKAGE_ARGS = {
    "participants": [
        DEFAULT_POLYGON_POS_PARTICIPANT
        | {
            "count": 2,
        },
        DEFAULT_POLYGON_POS_PARTICIPANT
        | {
            "is_validator": False,
        },
    ],
    "setup_images": {
        "contract_deployer": DEFAULT_POS_CONTRACT_DEPLOYER_IMAGE,
        "el_genesis_builder": DEFAULT_POS_EL_GENESIS_BUILDER_IMAGE,
        "validator_config_generator": DEFAULT_POS_VALIDATOR_CONFIG_GENERATOR_IMAGE,
    },
    "network_params": {
        "preregistered_validator_keys_mnemonic": "sibling lend brave explain wait orbit mom alcohol disorder message grace sun",
        "validator_stake_amount": "10000",  # in ether
        "validator_top_up_fee_amount": "2000",  # in ether
        # CL network params.
        "cl_chain_id": "heimdall-P5rXwg",
        "cl_span_poll_interval": "0m15s",
        "cl_checkpoint_poll_interval": "1m0s",
        # EL network params.
        "el_chain_id": "137",
        "el_block_interval_seconds": 2,
        "el_sprint_duration": 16,
        "el_span_duration": 128,
        "el_gas_limit": math.pow(10, 7),
    },
    "additional_services": [],
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
    polygon_pos_args = _parse_polygon_pos_args(plan, polygon_pos_input_args)
    plan.print("L2 input args parsed: {}".format(str(polygon_pos_args)))

    plan.print("Parsing the dev input args")
    dev_input_args = input_args.get("dev", {})
    dev_args = _parse_dev_args(plan, dev_input_args)
    plan.print("Dev input args parsed: {}".format(str(dev_args)))

    return {
        "ethereum_package": ethereum_args,
        "polygon_pos_package": polygon_pos_args,
        "dev": dev_args,
    }


def _parse_ethereum_args(plan, ethereum_args):
    # Create a mutable copy of ethereum_args.
    if ethereum_args:
        ethereum_args = dict(ethereum_args)

    # Set default params if not provided.
    if "network_params" not in ethereum_args:
        ethereum_args = DEFAULT_ETHEREUM_PACKAGE_ARGS

    for k, v in DEFAULT_ETHEREUM_PACKAGE_ARGS.get("network_params", {}).items():
        ethereum_args.get("network_params", {}).setdefault(k, v)

    # Sort the dict and return the result.
    return _sort_dict_by_values(ethereum_args)


def _parse_polygon_pos_args(plan, polygon_pos_args):
    # Create a mutable copy of polygon_pos_args.
    if polygon_pos_args:
        polygon_pos_args = dict(polygon_pos_args)

    sanity_check.sanity_check_polygon_args(plan, polygon_pos_args)

    # Parse the polygon pos input args and set defaults if needed.
    result = {}

    participants = polygon_pos_args.get("participants", [])
    result["participants"] = _parse_participants(participants)

    setup_images = polygon_pos_args.get("setup_images", {})
    result["setup_images"] = _parse_setup_images(setup_images)

    network_params = polygon_pos_args.get("network_params", {})
    result["network_params"] = _parse_network_params(network_params)

    additional_services = polygon_pos_args.get("additional_services", [])
    result["additional_services"] = _parse_additional_services(additional_services)

    # Sort the dict and return the result.
    return _sort_dict_by_values(result)


def _parse_dev_args(plan, dev_args):
    # Create a mutable copy of dev_args.
    if dev_args:
        dev_args = dict(dev_args)

    sanity_check.sanity_check_dev_args(plan, dev_args)

    # Set default params if not provided.
    if "should_deploy_l1" not in dev_args:
        dev_args["should_deploy_l1"] = DEFAULT_DEV_ARGS.get("should_deploy_l1", True)

    if "should_deploy_matic_contracts" not in dev_args:
        dev_args["should_deploy_matic_contracts"] = DEFAULT_DEV_ARGS.get(
            "should_deploy_matic_contracts", True
        )

    # Sort the dict and return the result.
    return _sort_dict_by_values(dev_args)


def _parse_participants(participants):
    participants_with_defaults = []

    # Set default participant if not provided.
    if len(participants) == 0:
        participants_with_defaults = DEFAULT_POLYGON_POS_PACKAGE_ARGS.get(
            "participants", []
        )

    for p in participants:
        # Create a mutable copy of participant.
        p = dict(p)

        # Set default EL image based on `el_type` if provided.
        el_type = p.get("el_type", "")
        el_image = p.get("el_image", "")
        if el_type and not el_image:
            if el_type == constants.EL_TYPE.bor:
                p["el_image"] = DEFAULT_EL_IMAGES[constants.EL_TYPE.bor]
            elif el_type == constants.EL_TYPE.erigon:
                p["el_image"] = DEFAULT_EL_IMAGES[constants.EL_TYPE.erigon]

        # Set default CL image based on `cl_type` if provided
        cl_type = p.get("cl_type", "")
        cl_image = p.get("cl_image", "")
        if cl_type and not cl_image:
            if cl_type == constants.CL_TYPE.heimdall:
                p["cl_image"] = DEFAULT_CL_IMAGES[constants.CL_TYPE.heimdall]
            elif cl_type == constants.CL_TYPE.heimdall_v2:
                p["cl_image"] = DEFAULT_CL_IMAGES[constants.CL_TYPE.heimdall_v2]

        # Fill in any missing fields with default values.
        for k, v in DEFAULT_POLYGON_POS_PARTICIPANT.items():
            p.setdefault(k, v)

        # Assign the modified dictionary back to the list.
        participants_with_defaults.append(p)

    # Sort each participant dictionary and return the result
    return [_sort_dict_by_values(p) for p in participants_with_defaults]


def _parse_setup_images(setup_images):
    # Create a mutable copy of setup_images.
    if setup_images:
        setup_images = dict(setup_images)

    # Set default matic contracts params if not provided.
    if not setup_images:
        setup_images = DEFAULT_POLYGON_POS_PACKAGE_ARGS["setup_images"]

    for k, v in DEFAULT_POLYGON_POS_PACKAGE_ARGS.get("setup_images", {}).items():
        setup_images.setdefault(k, v)

    # Sort the dict and return the result.
    return _sort_dict_by_values(setup_images)


def _parse_network_params(network_params):
    # Create a mutable copy of network_params.
    if network_params:
        network_params = dict(network_params)

    # Set default network params if not provided.
    if not network_params:
        network_params = DEFAULT_POLYGON_POS_PACKAGE_ARGS.get("network_params", {})

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


def _sort_dict_by_values(d):
    sorted_items = sorted(d.items(), key=lambda x: x[0])
    return {k: v for k, v in sorted_items}
