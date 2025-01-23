constants = import_module("../../package_io/constants.star")


def new_prefunded_account(
    eth_address,
    eth_public_key,
    eth_private_key,
    cometbft_address,
    cometbft_public_key,
    cometbft_private_key,
):
    return struct(
        eth_address=eth_address,
        eth_public_key=eth_public_key,
        eth_private_key=eth_private_key,
        cometbft_address=cometbft_address,
        cometbft_public_key=cometbft_public_key,
        cometbft_private_key=cometbft_private_key,
    )


def to_ethereum_pkg_pre_funded_accounts(pre_funded_accounts):
    balance = constants.VALIDATORS_BALANCE_ETH
    return {
        account.eth_address: {"balance": "{}ETH".format(balance)}
        for account in pre_funded_accounts
    }


def to_tendermint_public_key(account):
    # Heimdall's public keys (tendermint) must be in uncompressed format, which starts with the
    # prefix byte 0x04, followed by two 32-byte integers.
    return "0x04{}".format(account.eth_public_key.removeprefix("0x"))
