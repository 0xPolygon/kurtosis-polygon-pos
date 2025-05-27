account = import_module("../../account/account.star")
constants = import_module("../../config/constants.star")


def get_validator_data(validator_accounts):
    accounts = []
    dividends = []
    signing_infos = {}
    validator_set = []

    for i, validator_account in enumerate(validator_accounts):
        validator_id = str(i + 1)

        # Accounts.
        accounts.append(
            {
                "address": validator_account.eth_tendermint.address,
                "coins": [
                    {
                        "denom": "matic",
                        "amount": "{}000000000000000000".format(
                            constants.VALIDATORS_BALANCE_ETH
                        ),  # 18 zeros
                    }
                ],
                "sequence_number": "0",
                "account_number": "0",
                "module_name": "",
                "module_permissions": None,
            }
        )

        # Dividends.
        dividends.append(
            {
                "user": validator_account.eth_tendermint.address,
                "feeAmount": "0",
            }
        )

        # Signing infos.
        signing_infos[validator_id] = {
            "valID": validator_id,
            "startHeight": "0",
            "indexOffset": "0",
        }

        # Validator set.
        validator_set.append(
            {
                "ID": validator_id,
                "accum": "0",
                "endEpoch": "0",
                "jailed": False,
                "last_updated": "",
                "nonce": "1",
                "power": str(constants.VALIDATORS_BALANCE_ETH),
                "pubKey": account.to_tendermint_public_key(
                    validator_account.eth_tendermint
                ),
                "signer": validator_account.eth_tendermint.address,
                "startEpoch": "0",
            }
        )

    return struct(
        accounts=accounts,
        dividends=dividends,
        signing_infos=signing_infos,
        validator_set=validator_set,
    )
