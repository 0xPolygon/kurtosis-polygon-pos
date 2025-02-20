constants = import_module("./constants.star")

POLYGON_POS_PARAMS = {
    "participants": [
        "el_type",
        "el_image",
        "el_log_level",
        "cl_type",
        "cl_image",
        "cl_db_image",
        "cl_log_level",
        "is_validator",
        "count",
    ],
    "setup_images": [
        "contract_deployer",
        "el_genesis_builder",
        "validator_config_generator",
    ],
    "network_params": [
        "preregistered_validator_keys_mnemonic",
        "validator_stake_amount",
        "validator_top_up_fee_amount",
        "cl_chain_id",
        "cl_span_poll_interval",
        "cl_checkpoint_poll_interval",
        "el_chain_id",
        "el_block_interval_seconds",
        "el_sprint_duration",
        "el_span_duration",
        "el_gas_limit",
    ],
    "additional_services": [
        "blockscout",
        "prometheus_grafana",
        "tx_spammer",
    ],
}

VALID_CLIENT_COMBINATIONS = {
    constants.CL_TYPE.heimdall: [
        constants.EL_TYPE.bor,
        constants.EL_TYPE.bor_modified_for_heimdall_v2,
        constants.EL_TYPE.erigon,
    ],
    constants.CL_TYPE.heimdall_v2: [constants.EL_TYPE.bor_modified_for_heimdall_v2],
}

DEV_PARAMS = [
    "should_deploy_l1",  # boolean
    "l1_private_key",
    "l1_rpc_url",
    "should_deploy_matic_contracts",  # boolean
    "l2_el_genesis_filepath",
    "l2_cl_genesis_filepath",
]


def sanity_check_polygon_args(plan, input_args):
    # Validate top-level config.
    for param in input_args.keys():
        if param not in POLYGON_POS_PARAMS.keys():
            fail(
                'Invalid parameter: "{}". Allowed fields: {}.'.format(
                    param, POLYGON_POS_PARAMS.keys()
                )
            )

    # Validate keys.
    _validate_list_of_dict(input_args, "participants")
    _validate_dict(input_args, "setup_images")
    _validate_dict(input_args, "network_params")
    _validate_list(input_args, "additional_services")

    # Validate values.
    network_params = input_args.get("network_params")
    cl_chain_id = network_params.get("cl_chain_id")
    el_chain_id = network_params.get("el_chain_id")
    validate_chain_ids(cl_chain_id, el_chain_id)
    for p in input_args.get("participants"):
        _validate_participant(p)

    plan.print("Sanity check passed")


def sanity_check_dev_args(plan, input_args):
    # Validate top-level config.
    for param in input_args.keys():
        if param not in DEV_PARAMS:
            fail(
                'Invalid parameter: "{}". Allowed fields: {}.'.format(param, DEV_PARAMS)
            )

    # Validate values.
    should_deploy_l1 = input_args.get("should_deploy_l1")
    should_deploy_matic_contracts = input_args.get("should_deploy_matic_contracts")

    if not should_deploy_l1:
        l1_private_key = input_args.get("l1_private_key")
        if l1_private_key == "" and should_deploy_matic_contracts:
            fail(
                "`dev.l1_private_key` must be specified when `dev.should_deploy_l1` is set to false and `dev.should_deploy_matic_contracts` is set to true!"
            )

        l1_rpc_url = input_args.get("l1_rpc_url")
        if l1_rpc_url == "":
            fail(
                "`dev.l1_rpc_url` must be specified when `dev.should_deploy_l1` is set to false!"
            )

    if not should_deploy_matic_contracts:
        l2_el_genesis_filepath = input_args.get("l2_el_genesis_filepath")
        if l2_el_genesis_filepath == "":
            fail(
                "`dev.l2_el_genesis_filepath` must be specified when `dev.should_deploy_matic_contracts` is set to false!"
            )

        l2_cl_genesis_filepath = input_args.get("l2_cl_genesis_filepath")
        if l2_cl_genesis_filepath == "":
            fail(
                "`dev.l2_cl_genesis_filepath` must be specified when `dev.should_deploy_matic_contracts` is set to false!"
            )


def _validate_list(input_args, category):
    allowed_values = POLYGON_POS_PARAMS[category]
    if category in input_args:
        for item in input_args[category]:
            if item not in allowed_values:
                fail(
                    'Invalid item: "{}" in "{}" list. Allowed items: {}.'.format(
                        item,
                        category,
                        allowed_values,
                    )
                )


def _validate_dict(input_args, category):
    allowed_params = POLYGON_POS_PARAMS[category]
    if category in input_args:
        item = input_args[category]
        if item:
            for param in item.keys():
                if param not in allowed_params:
                    fail(
                        'Invalid key: "{}" in "{}" dict. Allowed keys: {}.'.format(
                            param, category, allowed_params
                        )
                    )


def _validate_list_of_dict(input_args, category):
    allowed_keys = POLYGON_POS_PARAMS[category]
    if category in input_args:
        for item in input_args[category]:
            for key in item.keys():
                if key not in allowed_keys:
                    fail(
                        'Invalid key: "{}" in "{}" list of dict. Allowed keys: {}.'.format(
                            key, category, allowed_keys
                        )
                    )


# For now, heimdall-v2 expects that the cl chain id follows the standard "heimdall-<el_chain_id>".
# https://github.com/0xPolygon/heimdall-v2/issues/135
def validate_chain_ids(cl_chain_id, el_chain_id):
    if not cl_chain_id and not el_chain_id:
        return

    expected_cl_chain_id = "heimdall-" + str(el_chain_id)
    if cl_chain_id != expected_cl_chain_id:
        fail(
            'CL chain id must follow the standard "heimdall-<el_chain_id>". Expected "{}" but got: "{}".'.format(
                expected_cl_chain_id, cl_chain_id
            )
        )


def _validate_participant(p):
    _validate_str(
        p, "cl_type", [constants.CL_TYPE.heimdall, constants.CL_TYPE.heimdall_v2]
    )
    _validate_str(
        p,
        "el_type",
        [
            constants.EL_TYPE.bor,
            constants.EL_TYPE.bor_modified_for_heimdall_v2,
            constants.EL_TYPE.erigon,
        ],
    )

    # Validate client combination.
    cl_type = p.get("cl_type")
    el_type = p.get("el_type")
    if cl_type in VALID_CLIENT_COMBINATIONS:
        valid_combinations = VALID_CLIENT_COMBINATIONS[cl_type]
        if el_type not in valid_combinations:
            fail(
                'Invalid client combination. The CL client "{}" does not support the EL client "{}". Valid combinations are: "{}".'.format(
                    cl_type, el_type, valid_combinations
                )
            )
    else:
        fail('The CL client "{}" has no valid client combination.'.format(cl_type))

    log_levels = [
        constants.LOG_LEVEL.error,
        constants.LOG_LEVEL.warn,
        constants.LOG_LEVEL.info,
        constants.LOG_LEVEL.debug,
        constants.LOG_LEVEL.trace,
    ]
    _validate_str(p, "cl_log_level", log_levels)
    _validate_str(p, "el_log_level", log_levels)

    # Heimdall (v1) only supports "error", "info", "debug" or "none" log levels.
    # ERROR: Failed to parse default log level (pair *:trace, list *:trace): Expected either "info", "debug", "error" or "none" level, given trace
    heimdall_v1_log_levels = [
        constants.LOG_LEVEL.error,
        constants.LOG_LEVEL.info,
        constants.LOG_LEVEL.debug,
    ]
    if p.get("cl_type") == constants.CL_TYPE.heimdall and p.get(
        "cl_log_level"
    ) not in heimdall_v1_log_levels + [""]:
        fail(
            'Heimdall (v1) does not support "{}" log level. Valid log levels are: "{}"'.format(
                p.get("cl_log_level"), heimdall_v1_log_levels
            )
        )

    _validate_strictly_positive_int(p, "count")


def _validate_str(input, attribute, allowed_values):
    value = input.get(attribute)
    if value and value not in allowed_values:
        fail(
            'Invalid "{}" attribute: "{}". Allowed value(s): {}.'.format(
                attribute, value, allowed_values
            )
        )


def _validate_strictly_positive_int(input, attribute):
    value = input.get(attribute)
    if value == 0:
        fail(
            'Invalid "{}": must be strictly positive, got: {}.'.format(attribute, value)
        )
