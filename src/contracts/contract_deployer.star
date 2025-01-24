account = import_module("../prelaunch_data_generator/genesis_constants/account.star")
constants = import_module("../package_io/constants.star")

CONTRACTS_CONFIG_FILE_PATH = "../../static_files/contracts"


def deploy_contracts(plan, l1_context, polygon_pos_args, validator_accounts):
    network_params = polygon_pos_args.get("network_params", {})
    setup_images = polygon_pos_args.get("setup_images", {})

    validator_accounts_formatted = _format_validator_accounts(validator_accounts)

    contracts_config_artifact = plan.upload_files(
        src=CONTRACTS_CONFIG_FILE_PATH,
        name="matic-contracts-deployer-config",
    )

    return plan.run_sh(
        name="matic-contracts-deployer",
        description="Deploying MATIC contracts to L1 and staking for each validator - it can take up to 5 minutes",
        image=setup_images.get("contract_deployer"),
        env_vars={
            "PRIVATE_KEY": l1_context.private_key,
            "L1_RPC_URL": l1_context.rpc_url,
            "EL_CHAIN_ID": network_params.get("el_chain_id", ""),
            "DEFAULT_EL_CHAIN_ID": constants.DEFAULT_EL_CHAIN_ID,
            "CL_CHAIN_ID": network_params.get("cl_chain_id", ""),
            "VALIDATOR_ACCOUNTS": validator_accounts_formatted,
            "VALIDATOR_BALANCE": str(constants.VALIDATORS_BALANCE_ETH),
            "VALIDATOR_STAKE_AMOUNT": network_params.get("validator_stake_amount", ""),
            "VALIDATOR_TOP_UP_FEE_AMOUNT": network_params.get(
                "validator_top_up_fee_amount", ""
            ),
        },
        files={
            "/opt/data": contracts_config_artifact,
        },
        store=[
            StoreSpec(
                src="/opt/contracts/contractAddresses.json",
                name="matic-contract-addresses",
            ),
            StoreSpec(
                src="/opt/contracts/validators.js",
                name="l2-validators-config",
            ),
        ],
        run="bash /opt/data/setup.sh",
        wait="300s",  # 5min (default 180s - 3min)
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
