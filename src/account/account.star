constants = import_module("../config/constants.star")


def new(address, public_key, private_key):
    return struct(
        address=address,
        public_key=public_key,
        private_key=private_key,
    )


def to_tendermint_public_key(account):
    # Heimdall's public keys (tendermint) must be in uncompressed format, which starts with the
    # prefix byte 0x04, followed by two 32-byte integers.
    return "0x04{}".format(account.public_key.removeprefix("0x"))


def new_validator(
    eth_tendermint_account,  # ETH/Tendermint account - used by heimdall validators
    comebft_account,  # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key
):
    return struct(
        eth_tendermint=eth_tendermint_account,
        cometbft=comebft_account,
    )


def get_cl_validator_account(validator, devnet_cl_type):
    # Select the appropriate validator account based on the devnet CL type.
    if devnet_cl_type == constants.CL_TYPE.heimdall:
        return validator.eth_tendermint
    elif devnet_cl_type == constants.CL_TYPE.heimdall_v2:
        return validator.cometbft
    else:
        fail(
            'Wrong devnet CL type: "{}". Allowed values: "{}."'.format(
                devnet_cl_type,
                [constants.CL_TYPE.heimdall, constants.CL_TYPE.heimdall_v2],
            )
        )


def to_ethereum_pkg_prefunded_account(address, balance):
    return {address: {"balance": "{}ETH".format(balance)}}
