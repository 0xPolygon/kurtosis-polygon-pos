contract_util = import_module("../contracts/util.star")
wallet_module = import_module("../wallet/wallet.star")


TEST_RUNNER_IMAGE = "leovct/e2e:bcf4f0d"  # https://github.com/agglayer/e2e


def launch(
    plan,
    l1_context,
    l2_context,
    l2_network_params,
    l2_el_genesis_artifact,
    contract_addresses_artifact,
):
    # Retrieve contract addresses.
    l1_deposit_manager_proxy_address = contract_util.get_address(
        plan,
        contract_name="l1_deposit_manager_proxy",
        contract_addresses_artifact=contract_addresses_artifact,
    )
    l1_stake_manager_proxy_address = contract_util.get_address(
        plan,
        contract_name="l1_stake_manager_proxy",
        contract_addresses_artifact=contract_addresses_artifact,
    )
    l1_matic_token_address = contract_util.get_address(
        plan,
        contract_name="l1_matic_token",
        contract_addresses_artifact=contract_addresses_artifact,
    )
    l1_erc20_token_address = contract_util.get_address(
        plan,
        contract_name="l1_erc20_token",
        contract_addresses_artifact=contract_addresses_artifact,
    )
    l1_erc721_token_address = contract_util.get_address(
        plan,
        contract_name="l1_erc721_token",
        contract_addresses_artifact=contract_addresses_artifact,
    )

    l2_state_receiver_address = contract_util.get_address(
        plan,
        contract_name="l2_state_receiver",
        l2_el_genesis_artifact=l2_el_genesis_artifact,
    )
    l2_erc20_token_address = contract_util.get_address(
        plan,
        contract_name="l2_erc20_token",
        contract_addresses_artifact=contract_addresses_artifact,
    )
    l2_erc721_token_address = contract_util.get_address(
        plan,
        contract_name="l2_erc721_token",
        contract_addresses_artifact=contract_addresses_artifact,
    )

    # Retrieve L2 urls.
    l2_rpc_url = l2_context.all_participants[0].el_context.rpc_http_url
    l2_cl_api_url = l2_context.all_participants[0].cl_context.api_url

    # Generate a new wallet, fund it with ETH, MATIC and some ERC20 tokens on L1.
    funder_private_key = l2_network_params.get("admin_private_key")
    wallet = wallet_module.new(plan)
    wallet_module.fund(
        plan,
        receiver_address=wallet.address,
        rpc_url=l1_context.rpc_url,
        funder_private_key=funder_private_key,
    )
    wallet_module.send_erc20_tokens(
        plan,
        contract_address=l1_matic_token_address,
        receiver_address=wallet.address,
        rpc_url=l1_context.rpc_url,
        funder_private_key=funder_private_key,
    )
    wallet_module.send_erc20_tokens(
        plan,
        contract_address=l1_erc20_token_address,
        receiver_address=wallet.address,
        rpc_url=l1_context.rpc_url,
        funder_private_key=funder_private_key,
    )

    plan.add_service(
        name="test-runner",
        config=ServiceConfig(
            image=TEST_RUNNER_IMAGE,
            env_vars={
                # Wallet.
                "PRIVATE_KEY": wallet.private_key,
                # RPC Urls.
                "L1_RPC_URL": l1_context.rpc_url,
                "L2_RPC_URL": l2_rpc_url,
                "L2_CL_NODE_TYPE": l2_context.devnet_cl_type,
                "L2_CL_API_URL": l2_cl_api_url,
                # Contract addresses.
                "L1_DEPOSIT_MANAGER_PROXY_ADDRESS": l1_deposit_manager_proxy_address,
                "L1_STAKE_MANAGER_PROXY_ADDRESS": l1_stake_manager_proxy_address,
                "L1_MATIC_TOKEN_ADDRESS": l1_matic_token_address,
                "L1_ERC20_TOKEN_ADDRESS": l1_erc20_token_address,
                "L1_ERC721_TOKEN_ADDRESS": l1_erc721_token_address,
                "L2_STATE_RECEIVER_ADDRESS": l2_state_receiver_address,
                "L2_ERC20_TOKEN_ADDRESS": l2_erc20_token_address,
                "L2_ERC721_TOKEN_ADDRESS": l2_erc721_token_address,
            },
            entrypoint=["bash", "-c"],
            cmd=["sleep infinity"],
        ),
    )
