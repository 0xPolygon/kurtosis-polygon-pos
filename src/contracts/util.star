ROOT_CONTRACTS_MAPPING = {
    # Core contracts.
    "l1_deposit_manager": ".root.DepositManager",
    "l1_deposit_manager_proxy": ".root.DepositManagerProxy",
    # EventsHubProxy - only availaible with the contract-deployer-node-20.
    "l1_exit_nft": ".root.ExitNFT",
    # Governance - only availaible with the contract-deployer-node-20.
    "l1_governance_proxy": ".root.GovernanceProxy",
    "l1_registry": ".root.Registry",
    "l1_root_chain": ".root.RootChain",
    "l1_root_chain_proxy": ".root.RootChainProxy",
    "l1_slashing_manager": ".root.SlashingManager",
    "l1_stake_manager": ".root.StakeManager",
    "l1_stake_manager_proxy": ".root.StakeManagerProxy",
    "l1_staking_info": ".root.StakingInfo",
    "l1_state_sender": ".root.StateSender",
    # ValidatorShare - only availaible with the contract-deployer-node-20.
    "l1_withdraw_manager": ".root.WithdrawManager",
    "l1_withdraw_manager_proxy": ".root.WithdrawManagerProxy",
    "l1_erc20_predicate": ".root.ERC20Predicate",
    "l1_erc721_predicate": ".root.ERC721Predicate",
    "l1_marketplace_predicate": ".root.MarketplacePredicate",
    # Tokens.
    "l1_matic_token": ".root.tokens.MaticToken",
    "l1_matic_weth_": ".root.tokens.MaticWeth",
    "l1_erc721_token": ".root.RootERC721",
    "l1_erc20_token": ".root.tokens.TestToken",
}

CHILD_CONTRACTS_MAPPING = {
    # Core contracts.
    "l2_child_chain": ".child.ChildChain",
    # Tokens.
    "l2_matic_token": ".child.tokens.MaticToken",
    "l2_matic_weth": ".child.tokens.MaticWeth",
    "l2_erc721_token": ".child.RootERC721",
    "l2_erc20_token": ".child.tokens.TestToken",
}


L2_GENESIS_CONTRACTS_MAPPING = {
    "l2_burnt_contract": ".config.bor.burntContract.0",
    "l2_state_receiver": ".config.bor.stateReceiverContract",
    "l2_validator_contract": ".config.bor.validatorContract",
}


def get_address(
    plan, contract_name, contract_addresses_artifact=None, l2_el_genesis_artifact=None
):
    if (
        contract_name in ROOT_CONTRACTS_MAPPING
        or contract_name in CHILD_CONTRACTS_MAPPING
    ):
        if not contract_addresses_artifact:
            fail(
                "contract_addresses_artifact is required for contract '{}'.".format(
                    contract_name
                )
            )
        mapping = ROOT_CONTRACTS_MAPPING | CHILD_CONTRACTS_MAPPING
        file_path = "/opt/contracts/contractAddresses.json"
        artifact = contract_addresses_artifact
    elif contract_name in L2_GENESIS_CONTRACTS_MAPPING:
        if not l2_el_genesis_artifact:
            fail(
                "l2_el_genesis_artifact is required for contract '{}'.".format(
                    contract_name
                )
            )
        mapping = L2_GENESIS_CONTRACTS_MAPPING
        file_path = "/opt/contracts/genesis.json"
        artifact = l2_el_genesis_artifact
    else:
        fail(
            "The contract '{}' does not exist in the known mappings. Available contracts: '{}'.".format(
                contract_name,
                ROOT_CONTRACTS_MAPPING.keys()
                | CHILD_CONTRACTS_MAPPING.keys()
                | L2_GENESIS_CONTRACTS_MAPPING.keys(),
            )
        )

    path = mapping.get(contract_name, "")
    if not path:
        fail(
            "The contract '{}' does not exist in the given artifact. Available contracts: '{}'.".format(
                contract_name, mapping.keys()
            )
        )

    result = plan.run_sh(
        name="{}-address-reader".format(contract_name),
        description="Reading '{}' contract address".format(contract_name),
        files={
            "/opt/contracts": artifact,
        },
        run="jq --raw-output '{}' {} | tr -d '\n'".format(path, file_path),
    )
    return result.output
