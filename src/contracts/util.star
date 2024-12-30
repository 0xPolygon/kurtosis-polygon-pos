def read_contract_addresses(plan, contract_addresses_artifact):
    mapping = {
        "matic_token": ".root.tokens.MaticToken",
        "staking_manager": ".root.StakeManagerProxy",
        "slashing_manager": ".root.SlashingManager",
        "root_chain": ".root.RootChainProxy",
        "staking_info": ".root.StakingInfo",
        "state_sender": ".root.StateSender",
    }
    result = {}
    for key, path in mapping.items():
        address = _read_contract_address(plan, contract_addresses_artifact, key, path)
        result[key] = address
    return result


def _read_contract_address(plan, contract_addresses_artifact, key, path):
    result = plan.run_sh(
        description="Read {} contract address".format(key),
        files={
            "/opt/contracts": contract_addresses_artifact,
        },
        run="jq --raw-output '{}' /opt/contracts/contractAddresses.json | tr -d '\n'".format(
            path
        ),
    )
    return result.output
