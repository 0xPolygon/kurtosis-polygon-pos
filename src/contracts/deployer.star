constants = import_module("../config/constants.star")

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
    result = plan.run_sh(
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
            "VALIDATOR_STAKE_AMOUNT_ETH": str(
                network_params.get("validator_stake_amount_eth")
            ),
            "VALIDATOR_TOP_UP_FEE_AMOUNT_ETH": str(
                network_params.get("validator_top_up_fee_amount_eth")
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
    artifact_count = len(result.files_artifacts)
    if artifact_count != 2:
        fail(
            "The L1 contract deployer should have generated 2 artifacts, got {}.".format(
                artifact_count
            )
        )
    l1_contract_addresses_artifact = result.files_artifacts[0]
    validator_config_artifact = result.files_artifacts[1]
    return (l1_contract_addresses_artifact, validator_config_artifact)


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

    result = plan.run_sh(
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
    artifact_count = len(result.files_artifacts)
    if artifact_count != 1:
        fail(
            "The L2 contract deployer should have generated 1 artifact, got {}.".format(
                artifact_count
            )
        )
    contract_addresses_artifact = result.files_artifacts[0]
    return contract_addresses_artifact


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
    # The contract deployer image follows the standard: leovct/pos-contract-deployer-<node-version>:<tag>
    # where the node version can either be "node-16" or "node-20".
    result = contract_deployer_image.removeprefix(
        "leovct/pos-contract-deployer-"
    ).split(
        ":"
    )  # ["<node-version>", "tag"]
    if len(result) != 2:
        fail(
            'The contract deployer image does not follow the standard "leovct/pos-contract-deployer-<node-version>:<tag>": {}'.format(
                contract_deployer_image
            )
        )

    node_version = result[0]
    supported_versions = ["node-16", "node-20"]
    if node_version not in supported_versions:
        fail(
            'The contract deployer only supports "{}" but got: "{}"'.format(
                supported_versions, node_version
            )
        )
    return "{}/{}".format(CONTRACTS_CONFIG_FILE_PATH, node_version)
