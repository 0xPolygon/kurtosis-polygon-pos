constants = import_module("../constants/constants.star")
math = import_module("../utils/math/math.star")
enums = import_module("../enums.star")


ETHEREUM_PACKAGE_ARGS = {
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
        "network_id": constants.L1_CHAIN_ID,
        "prefunded_accounts": "",
        "preset": "minimal",
        "seconds_per_slot": 1,
    },
}

POLYGON_POS_PARTICIPANT = {
    "kind": enums.PARTICIPANT_KIND.validator,
    "cl_type": enums.CL_TYPE.heimdall,
    "cl_image": constants.CL_IMAGES[enums.CL_TYPE.heimdall],
    "cl_db_image": constants.CL_DB_IMAGE,
    "cl_log_level": enums.LOG_LEVEL.info,
    "el_type": enums.EL_TYPE.bor,
    "el_image": constants.EL_IMAGES[enums.EL_TYPE.bor],
    "el_log_level": enums.LOG_LEVEL.info,
    "count": 1,
}

POLYGON_POS_EL_BOR_PARTICIPANT = {
    "el_bor_sync_mode": enums.BOR_SYNC_MODES.full,
}

POLYGON_POS_PACKAGE_ARGS = {
    "participants": [
        POLYGON_POS_PARTICIPANT
        | {
            "kind": enums.PARTICIPANT_KIND.validator,
            "count": 2,
        },
        POLYGON_POS_PARTICIPANT
        | {
            "kind": enums.PARTICIPANT_KIND.rpc,
            "count": 1,
        },
    ],
    "setup_images": {
        "contract_deployer": constants.CONTRACT_DEPLOYER_IMAGE,
        "el_genesis_builder": constants.EL_GENESIS_BUILDER_IMAGE,
        "validator_config_generator": constants.VALIDATOR_CONFIG_GENERATOR_IMAGE,
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
        "cl_chain_id": constants.CL_CHAIN_ID,
        "cl_span_poll_interval": "0m15s",
        "cl_checkpoint_poll_interval": "1m0s",
        # EL network params.
        "el_chain_id": constants.EL_CHAIN_ID,
        "el_block_interval_seconds": 2,
        "el_sprint_duration": 16,
        "el_span_duration": 128,
        "el_gas_limit": math.pow(10, 7),
    },
    "additional_services": [
        enums.ADDITIONAL_SERVICES.test_runner,
    ],
    "test_runner_params": {
        "image": constants.E2E_TEST_IMAGE,
    },
}

DEV_ARGS = {
    "should_deploy_l1": True,
    "should_deploy_matic_contracts": True,
}
