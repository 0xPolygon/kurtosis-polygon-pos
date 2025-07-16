account = import_module("account.star")
enums = import_module("../../enums.star")


def test_new(plan):
    test_cases = [
        (
            ("0x1234567890abcdef", "0xpubkey123", "0xprivkey456"),
            struct(
                address="0x1234567890abcdef",
                public_key="0xpubkey123",
                private_key="0xprivkey456",
            ),
        ),
        (
            ("0x0000000000000000", "0x", "0x"),
            struct(
                address="0x0000000000000000",
                public_key="0x",
                private_key="0x",
            ),
        ),
        (
            ("0xabcdef1234567890", "0xpubkey789", "0xprivkey012"),
            struct(
                address="0xabcdef1234567890",
                public_key="0xpubkey789",
                private_key="0xprivkey012",
            ),
        ),
    ]
    for (address, public_key, private_key), expected in test_cases:
        result = account.new(address, public_key, private_key)
        expect.eq(result.address, expected.address)
        expect.eq(result.public_key, expected.public_key)
        expect.eq(result.private_key, expected.private_key)


def test_to_tendermint_public_key(plan):
    test_cases = [
        (
            struct(
                address="0x123",
                public_key="0x1234567890abcdef",
                private_key="0xprivkey",
            ),
            "0x041234567890abcdef",
        ),
        (
            struct(
                address="0x456", public_key="1234567890abcdef", private_key="0xprivkey"
            ),
            "0x041234567890abcdef",
        ),
        (
            struct(
                address="0x789",
                public_key="0xabcdef1234567890",
                private_key="0xprivkey",
            ),
            "0x04abcdef1234567890",
        ),
        (
            struct(address="0x000", public_key="0x", private_key="0xprivkey"),
            "0x04",
        ),
    ]
    for account_struct, expected in test_cases:
        result = account.to_tendermint_public_key(account_struct)
        expect.eq(result, expected)


def test_new_validator(plan):
    test_cases = [
        (
            (
                struct(address="0x123", public_key="0xpub1", private_key="0xpriv1"),
                struct(address="0x456", public_key="0xpub2", private_key="0xpriv2"),
            ),
            struct(
                eth_tendermint=struct(
                    address="0x123", public_key="0xpub1", private_key="0xpriv1"
                ),
                cometbft=struct(
                    address="0x456", public_key="0xpub2", private_key="0xpriv2"
                ),
            ),
        ),
    ]
    for (eth_tendermint_account, cometbft_account), expected in test_cases:
        result = account.new_validator(eth_tendermint_account, cometbft_account)

        expect.eq(result.eth_tendermint.address, expected.eth_tendermint.address)
        expect.eq(result.eth_tendermint.public_key, expected.eth_tendermint.public_key)
        expect.eq(
            result.eth_tendermint.private_key, expected.eth_tendermint.private_key
        )

        expect.eq(result.cometbft.address, expected.cometbft.address)
        expect.eq(result.cometbft.public_key, expected.cometbft.public_key)
        expect.eq(result.cometbft.private_key, expected.cometbft.private_key)


def test_get_cl_validator_account(plan):
    eth_tendermint_account = struct(
        address="0x123", public_key="0xpub1", private_key="0xpriv1"
    )
    cometbft_account = struct(
        address="0x456", public_key="0xpub2", private_key="0xpriv2"
    )
    validator = account.new_validator(eth_tendermint_account, cometbft_account)

    test_cases = [
        (
            (validator, enums.CL_TYPE.heimdall),
            eth_tendermint_account,
        ),
        (
            (validator, enums.CL_TYPE.heimdall_v2),
            cometbft_account,
        ),
    ]
    for (validator_struct, cl_type), expected in test_cases:
        result = account.get_cl_validator_account(validator_struct, cl_type)
        expect.eq(result.address, expected.address)
        expect.eq(result.public_key, expected.public_key)
        expect.eq(result.private_key, expected.private_key)


def test_to_ethereum_pkg_prefunded_account(plan):
    test_cases = [
        (
            ("0x1234567890abcdef", 100),
            {"0x1234567890abcdef": {"balance": "100ETH"}},
        ),
        (
            ("0x0000000000000000", 0),
            {"0x0000000000000000": {"balance": "0ETH"}},
        ),
        (
            ("0xabcdef1234567890", 1000),
            {"0xabcdef1234567890": {"balance": "1000ETH"}},
        ),
        (
            ("0x123", 50),
            {"0x123": {"balance": "50ETH"}},
        ),
    ]
    for (address, balance), expected in test_cases:
        result = account.to_ethereum_pkg_prefunded_account(address, balance)
        expect.eq(result, expected)
