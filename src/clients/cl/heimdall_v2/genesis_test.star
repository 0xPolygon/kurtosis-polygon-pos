genesis = import_module("genesis.star")
account = import_module("../../../utils/account/account.star")
constants = import_module("../../../constants/constants.star")


def test_get_validator_data_single_validator(plan):
    # Create a single validator account
    eth_tendermint_account = account.new(
        "0x1234567890abcdef1234567890abcdef12345678",
        "0xpubkey123456789012345678901234567890123456789012345678901234567890",
        "0xprivkey123456789012345678901234567890123456789012345678901234567890",
    )
    cometbft_account = account.new(
        "0x9876543210fedcba9876543210fedcba98765432",
        "0xpubkey987654321098765432109876543210987654321098765432109876543210",
        "0xprivkey987654321098765432109876543210987654321098765432109876543210",
    )
    validator = account.new_validator(eth_tendermint_account, cometbft_account)
    validator_accounts = [validator]

    result = genesis.get_validator_data(validator_accounts)

    # Test accounts
    expect.eq(len(result.accounts), 1)
    expect.eq(result.accounts[0]["@type"], "/cosmos.auth.v1beta1.BaseAccount")
    expect.eq(
        result.accounts[0]["address"], "0x9876543210fedcba9876543210fedcba98765432"
    )
    expect.eq(result.accounts[0]["pub_key"]["@type"], "/cosmos.crypto.secp256k1.PubKey")
    expect.eq(
        result.accounts[0]["pub_key"]["key"],
        "0xpubkey987654321098765432109876543210987654321098765432109876543210",
    )
    expect.eq(result.accounts[0]["account_number"], "1")
    expect.eq(result.accounts[0]["sequence"], "0")

    # Test balances
    expect.eq(len(result.balances), 1)
    expect.eq(
        result.balances[0]["address"], "9876543210fedcba9876543210fedcba98765432"
    )  # 0x prefix removed
    expect.eq(result.balances[0]["coins"][0]["denom"], "pol")
    expect.eq(
        result.balances[0]["coins"][0]["amount"], "1000000000000000000000000000"
    )  # 10^9 + 18 zeros

    # Test supply
    expect.eq(len(result.supply), 1)
    expect.eq(result.supply[0]["denom"], "pol")
    expect.eq(
        result.supply[0]["amount"], "1000000000000000000000000000"
    )  # 10^9 + 18 zeros (1 validator)

    # Test dividends
    expect.eq(len(result.dividends), 1)
    expect.eq(
        result.dividends[0]["user"], "9876543210fedcba9876543210fedcba98765432"
    )  # 0x prefix removed
    expect.eq(result.dividends[0]["fee_amount"], "0")

    # Test validator set
    expect.eq(len(result.validator_set), 1)
    expect.eq(result.validator_set[0]["start_epoch"], "0")
    expect.eq(result.validator_set[0]["end_epoch"], "0")
    expect.eq(result.validator_set[0]["nonce"], "1")
    expect.eq(
        result.validator_set[0]["pub_key"],
        "0xpubkey987654321098765432109876543210987654321098765432109876543210",
    )
    expect.eq(
        result.validator_set[0]["signer"], "9876543210fedcba9876543210fedcba98765432"
    )  # 0x prefix removed
    expect.eq(result.validator_set[0]["last_updated"], "")
    expect.eq(result.validator_set[0]["jailed"], False)
    expect.eq(result.validator_set[0]["val_id"], "1")
    expect.eq(result.validator_set[0]["voting_power"], "1000000000")  # 10^9
    expect.eq(result.validator_set[0]["proposer_priority"], "0")

    # Test total voting power
    expect.eq(result.total_voting_power, 1000000000)  # 10^9 * 1 validator


def test_get_validator_data_multiple_validators(plan):
    # Create multiple validator accounts
    validators = []
    for i in range(3):
        eth_tendermint_account = account.new(
            "0x{}234567890abcdef1234567890abcdef12345678".format(i),
            "0x{}ubkey123456789012345678901234567890123456789012345678901234567890".format(
                i
            ),
            "0x{}rivkey123456789012345678901234567890123456789012345678901234567890".format(
                i
            ),
        )
        cometbft_account = account.new(
            "0x{}876543210fedcba9876543210fedcba98765432".format(i),
            "0x{}ubkey987654321098765432109876543210987654321098765432109876543210".format(
                i
            ),
            "0x{}rivkey987654321098765432109876543210987654321098765432109876543210".format(
                i
            ),
        )
        validators.append(
            account.new_validator(eth_tendermint_account, cometbft_account)
        )

    result = genesis.get_validator_data(validators)

    # Test that we have 3 of each type
    expect.eq(len(result.accounts), 3)
    expect.eq(len(result.balances), 3)
    expect.eq(len(result.dividends), 3)
    expect.eq(len(result.validator_set), 3)

    # Test that validator IDs are sequential
    for i in range(3):
        validator_id = str(i + 1)
        expect.eq(result.accounts[i]["account_number"], validator_id)
        expect.eq(result.validator_set[i]["val_id"], validator_id)

    # Test that addresses are correctly set (cometbft addresses)
    for i in range(3):
        expected_address = "0x{}876543210fedcba9876543210fedcba98765432".format(i)
        expected_address_no_prefix = "{}876543210fedcba9876543210fedcba98765432".format(
            i
        )
        expect.eq(result.accounts[i]["address"], expected_address)
        expect.eq(result.balances[i]["address"], expected_address_no_prefix)
        expect.eq(result.dividends[i]["user"], expected_address_no_prefix)
        expect.eq(result.validator_set[i]["signer"], expected_address_no_prefix)

    # Test total supply and voting power for 3 validators
    expect.eq(
        result.supply[0]["amount"], "3000000000000000000000000000"
    )  # 10^9 * 3 + 18 zeros
    expect.eq(result.total_voting_power, 3000000000)  # 10^9 * 3


def test_get_validator_data_empty_list(plan):
    result = genesis.get_validator_data([])

    expect.eq(len(result.accounts), 0)
    expect.eq(len(result.balances), 0)
    expect.eq(len(result.dividends), 0)
    expect.eq(len(result.validator_set), 0)
    expect.eq(result.supply[0]["amount"], "0000000000000000000")  # 0 + 18 zeros
    expect.eq(result.total_voting_power, 0)


def test_get_validator_data_address_prefix_removal(plan):
    # Test that 0x prefixes are correctly removed where needed
    eth_tendermint_account = account.new(
        "0x1111111111111111111111111111111111111111",
        "0x2222222222222222222222222222222222222222222222222222222222222222",
        "0x3333333333333333333333333333333333333333333333333333333333333333",
    )
    cometbft_account = account.new(
        "0x4444444444444444444444444444444444444444",
        "0x5555555555555555555555555555555555555555555555555555555555555555",
        "0x6666666666666666666666666666666666666666666666666666666666666666",
    )
    validator = account.new_validator(eth_tendermint_account, cometbft_account)

    result = genesis.get_validator_data([validator])

    # Accounts should keep 0x prefix
    expect.eq(
        result.accounts[0]["address"], "0x4444444444444444444444444444444444444444"
    )

    # Balances, dividends, and validator set should remove 0x prefix
    expect.eq(result.balances[0]["address"], "4444444444444444444444444444444444444444")
    expect.eq(result.dividends[0]["user"], "4444444444444444444444444444444444444444")
    expect.eq(
        result.validator_set[0]["signer"], "4444444444444444444444444444444444444444"
    )


def test_get_validator_data_structure_consistency(plan):
    # Test that the returned structure has all required fields
    eth_tendermint_account = account.new(
        "0x1111111111111111111111111111111111111111",
        "0x2222222222222222222222222222222222222222222222222222222222222222",
        "0x3333333333333333333333333333333333333333333333333333333333333333",
    )
    cometbft_account = account.new(
        "0x4444444444444444444444444444444444444444",
        "0x5555555555555555555555555555555555555555555555555555555555555555",
        "0x6666666666666666666666666666666666666666666666666666666666666666",
    )
    validator = account.new_validator(eth_tendermint_account, cometbft_account)

    result = genesis.get_validator_data([validator])

    # Verify structure has all required fields
    expect.eq(hasattr(result, "accounts"), True)
    expect.eq(hasattr(result, "balances"), True)
    expect.eq(hasattr(result, "supply"), True)
    expect.eq(hasattr(result, "dividends"), True)
    expect.eq(hasattr(result, "validator_set"), True)
    expect.eq(hasattr(result, "total_voting_power"), True)

    # Verify account structure
    account_item = result.accounts[0]
    required_account_fields = [
        "@type",
        "address",
        "pub_key",
        "account_number",
        "sequence",
    ]
    for field in required_account_fields:
        expect.eq(field in account_item, True)

    # Verify pub_key structure
    expect.eq("@type" in account_item["pub_key"], True)
    expect.eq("key" in account_item["pub_key"], True)

    # Verify balance structure
    balance_item = result.balances[0]
    required_balance_fields = ["address", "coins"]
    for field in required_balance_fields:
        expect.eq(field in balance_item, True)

    # Verify dividend structure
    dividend_item = result.dividends[0]
    required_dividend_fields = ["user", "fee_amount"]
    for field in required_dividend_fields:
        expect.eq(field in dividend_item, True)

    # Verify validator set structure
    validator_set_item = result.validator_set[0]
    required_validator_fields = [
        "start_epoch",
        "end_epoch",
        "nonce",
        "pub_key",
        "signer",
        "last_updated",
        "jailed",
        "val_id",
        "voting_power",
        "proposer_priority",
    ]
    for field in required_validator_fields:
        expect.eq(field in validator_set_item, True)

    # Verify supply structure
    supply_item = result.supply[0]
    required_supply_fields = ["denom", "amount"]
    for field in required_supply_fields:
        expect.eq(field in supply_item, True)
