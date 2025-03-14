constants = import_module("../package_io/constants.star")

CONTRACTS_CONFIG_FILE_PATH = "../../static_files/contracts"


def deploy_l1_contracts(
    plan, polygon_pos_args, l1_rpc_url, private_key, validator_accounts
):
    network_params = polygon_pos_args.get("network_params")
    setup_images = polygon_pos_args.get("setup_images")
    contract_deployer_image = setup_images.get("contract_deployer")
    contract_deployer_config_filepath = _determine_contract_deployer_config_filepath(
        contract_deployer_image
    )
    contract_deployer_config_artifact = plan.upload_files(
        src=contract_deployer_config_filepath,
        name="matic-contracts-l1-deployer-config",
    )

    validator_accounts_formatted = _format_validator_accounts(validator_accounts)
    return plan.run_sh(
        name="matic-contracts-l1-deployer",
        description="Deploying MATIC contracts to L1, initializing state and staking for each validator - it can take up to 5 minutes",
        image=contract_deployer_image,
        env_vars={
            "PRIVATE_KEY": private_key,
            "L1_RPC_URL": l1_rpc_url,
            "EL_CHAIN_ID": network_params.get("el_chain_id"),
            "DEFAULT_EL_CHAIN_ID": constants.DEFAULT_EL_CHAIN_ID,
            "CL_CHAIN_ID": network_params.get("cl_chain_id"),
            "VALIDATOR_ACCOUNTS": validator_accounts_formatted,
            "VALIDATOR_BALANCE": str(constants.VALIDATORS_BALANCE_ETH),
            "VALIDATOR_STAKE_AMOUNT": str(network_params.get("validator_stake_amount")),
            "VALIDATOR_TOP_UP_FEE_AMOUNT": str(
                network_params.get("validator_top_up_fee_amount")
            ),
        },
        files={
            "/opt/data": contract_deployer_config_artifact,
        },
        store=[
            StoreSpec(
                src="/opt/contracts/contractAddresses.json",
                name="matic-contract-l1-addresses",
            ),
            StoreSpec(
                src="/opt/contracts/validators.js",
                name="l2-validators-config",
            ),
        ],
        run="bash /opt/data/deploy-l1-contracts.sh",
        wait="5m",
    )


def deploy_l2_contracts_and_synchronise_l1_state(
    plan,
    polygon_pos_args,
    l1_rpc_url,
    l2_rpc_url,
    private_key,
    contract_addresses_artifact,
):
    network_params = polygon_pos_args.get("network_params")
    setup_images = polygon_pos_args.get("setup_images")
    contract_deployer_image = setup_images.get("contract_deployer")
    contract_deployer_config_filepath = _determine_contract_deployer_config_filepath(
        contract_deployer_image
    )
    contract_deployer_config_artifact = plan.upload_files(
        src=contract_deployer_config_filepath,
        name="matic-contracts-l2-deployer-config",
    )

    return plan.run_sh(
        name="matic-contracts-l2-deployer",
        description="Deploying MATIC contracts to L2 and synchronising state on L1",
        image=contract_deployer_image,
        env_vars={
            "PRIVATE_KEY": private_key,
            "L1_RPC_URL": l1_rpc_url,
            "L2_RPC_URL": l2_rpc_url,
            "EL_CHAIN_ID": network_params.get("el_chain_id"),
            "DEFAULT_EL_CHAIN_ID": constants.DEFAULT_EL_CHAIN_ID,
        },
        files={
            "/opt/data": contract_deployer_config_artifact,
            "/opt/data/addresses": contract_addresses_artifact,
        },
        store=[
            StoreSpec(
                src="/opt/contracts/contractAddresses.json",
                name="matic-contract-addresses",
            ),
        ],
        run="bash /opt/data/deploy-l2-contracts.sh",
        wait="5m",
    )


def _format_validator_accounts(accounts):
    return ";".join(
        [
            "{},{}".format(
                account.eth_tendermint.address, account.eth_tendermint.public_key
            )
            for account in accounts
        ]
    )


def _determine_contract_deployer_config_filepath(contract_deployer_image):
    # The contract deployer image follows the standard: leovct/pos-contract-deployer:<node-version>
    # where the version can either be "node-16" or "node-20".
    tag = contract_deployer_image.split(":")
    if len(tag) != 2:
        fail(
            'The contract deployer image: does not follow the standard "leovct/pos-contract-deployer:node-<node-version>-.*": {}'.format(
                contract_deployer_image
            )
        )

    result = tag[1].split("-")
    if len(result) < 2:
        fail(
            'The contract deployer image: does not follow the standard "leovct/pos-contract-deployer:node-<node-version>-.*": {}'.format(
                contract_deployer_image
            )
        )
    node_version = "{}-{}".format(result[0], result[1])
    # TODO: Remove this node-20-fix hack once the following PR is merged and the new contract deployer image is released.
    # https://github.com/0xPolygon/pos-contracts/pull/30
    supported_versions = ["node-16", "node-20", "node-20-fix"]
    if node_version not in supported_versions:
        fail(
            'The contract deployer only supports "{}" but got: "{}"'.format(
                supported_versions, node_version
            )
        )
    return "{}/{}".format(CONTRACTS_CONFIG_FILE_PATH, node_version)
