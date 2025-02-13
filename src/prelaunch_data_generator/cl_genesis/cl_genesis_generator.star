account_util = import_module("../genesis_constants/account.star")
constants = import_module("../../package_io/constants.star")
contract_util = import_module("../../contracts/util.star")


CL_GENESIS_TEMPLATE_FOLDER_PATH = "../../../static_files/genesis/cl/"
HEIMDALL_GENESIS_TEMPLATE_FILE_NAME = {
    constants.CL_TYPE.heimdall: "heimdall-genesis.json",
    constants.CL_TYPE.heimdall_v2: "heimdall-v2-genesis.json",
}


def generate_cl_genesis_data(
    plan,
    polygon_pos_args,
    devnet_cl_type,
    validator_accounts,
    contract_addresses_artifact,
):
    network_params = polygon_pos_args.get("network_params", {})
    validators_number = len(validator_accounts)

    cl_type_specific_data = {}
    if devnet_cl_type == constants.CL_TYPE.heimdall:
        validator_data = _get_heimdall_validator_data(validator_accounts)
        proposer = []
        if validators_number > 0:
            proposer = validator_data.validator_set[0]
        cl_type_specific_data = {
            "accounts": json.indent(json.encode(validator_data.accounts)),
            "dividend_accounts": json.indent(json.encode(validator_data.dividends)),
            "signing_infos": json.indent(json.encode(validator_data.signing_infos)),
            "validators": json.indent(json.encode(validator_data.validator_set)),
            "proposer": json.indent(json.encode(proposer)),
            "producer_count": len(validator_data.validator_set),
        }
    elif devnet_cl_type == constants.CL_TYPE.heimdall_v2:
        validator_data = _get_heimdall_v2_validator_data(validator_accounts)
        proposer = []
        if validators_number > 0:
            proposer = validator_data.validator_set[0]
        cl_type_specific_data = {
            "accounts": json.indent(json.encode(validator_data.accounts)),
            "balances": json.indent(json.encode(validator_data.balances)),
            "supply": json.indent(json.encode(validator_data.supply)),
            "dividend_accounts": json.indent(json.encode(validator_data.dividends)),
            "validators": json.indent(json.encode(validator_data.validator_set)),
            "proposer": json.indent(json.encode(proposer)),
            "producer_count": len(validator_data.validator_set),
            "total_voting_power": validator_data.total_voting_power,
        }

    el_span_duration = network_params.get("el_span_duration", "")
    contract_addresses = contract_util.read_contract_addresses(
        plan, contract_addresses_artifact
    )

    cl_genesis_temporary_artifact = plan.render_templates(
        name="l2-cl-genesis-tmp",
        config={
            "genesis-tmp.json": struct(
                template=read_file(
                    "{}/{}".format(
                        CL_GENESIS_TEMPLATE_FOLDER_PATH,
                        HEIMDALL_GENESIS_TEMPLATE_FILE_NAME[devnet_cl_type],
                    )
                ),
                data={
                    # chain params
                    "cl_chain_id": network_params.get("cl_chain_id", ""),
                    "el_chain_id": network_params.get("el_chain_id", ""),
                    "el_sprint_duration": network_params.get("el_sprint_duration", ""),
                    "el_span_duration": el_span_duration,
                    "el_first_span_end_block": el_span_duration - 1,
                    # contract addresses
                    "matic_token_address": contract_addresses.get("matic_token"),
                    "staking_manager_address": contract_addresses.get(
                        "staking_manager"
                    ),
                    "slash_manager_address": contract_addresses.get("slashing_manager"),
                    "root_chain_address": contract_addresses.get("root_chain"),
                    "staking_info_address": contract_addresses.get("staking_info"),
                    "state_sender_address": contract_addresses.get("state_sender"),
                }
                | cl_type_specific_data,
            ),
        },
    )

    # The template that Kurtosis generates is not a valid json thus if you want to check the content
    # of the file artifact, Kurtosis will render an empty file... This is a hack to format the file
    # with jq and get a working artifact.
    return plan.run_sh(
        name="l2-cl-genesis-generator",
        description="Generating L2 CL genesis",
        files={
            "/opt/data/genesis": cl_genesis_temporary_artifact,
        },
        store=[
            StoreSpec(
                src="/opt/data/genesis/genesis.json",
                name="l2-cl-genesis",
            ),
        ],
        run="&&".join(
            [
                # Generate the L2 CL genesis.
                "jq . /opt/data/genesis/genesis-tmp.json > /opt/data/genesis/genesis.json",
                # Add the current date to the CL genesis.
                # 2025-01-31T22:51:08.000000000Z
                'date=$(date -u +"%Y-%m-%dT%H:%M:%S.%NZ" | tr -d "\n")',
                "date=${date}000000000Z",
                "jq --arg d \"$date\" '.genesis_time = $d' /opt/data/genesis/genesis.json > tmp.json",
                "mv tmp.json /opt/data/genesis/genesis.json",
                # Print the final CL genesis.
                "cat /opt/data/genesis/genesis.json",
            ]
        ),
    )


def _get_heimdall_validator_data(validator_accounts):
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
                "pubKey": account_util.to_tendermint_public_key(
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


def _get_heimdall_v2_validator_data(validator_accounts):
    accounts = []
    balances = []
    dividends = []
    signing_infos = {}
    validator_set = []

    for i, validator_account in enumerate(validator_accounts):
        validator_id = str(i + 1)

        # Accounts.
        accounts.append(
            {
                "@type": "/cosmos.auth.v1beta1.BaseAccount",
                "address": validator_account.cometbft.address,
                "pub_key": {
                    "@type": "/cosmos.crypto.secp256k1.PubKey",
                    "key": validator_account.cometbft.public_key,
                },
                "account_number": validator_id,
                "sequence": "0",
            }
        )

        # Token balances.
        balances.append(
            {
                "address": validator_account.cometbft.address.removeprefix("0x"),
                "coins": [
                    {
                        "denom": "pol",
                        "amount": "{}000000000000000000".format(
                            constants.VALIDATORS_BALANCE_ETH
                        ),  # 18 zeros
                    },
                ],
            }
        )

        # Dividends.
        dividends.append(
            {
                "user": validator_account.cometbft.address.removeprefix("0x"),
                "fee_amount": "0",
            }
        )

        # Validator set.
        validator_set.append(
            {
                "start_epoch": "0",
                "end_epoch": "0",
                "nonce": "1",
                "pub_key": validator_account.cometbft.public_key,
                "signer": validator_account.cometbft.address.removeprefix("0x"),
                "last_updated": "",
                "jailed": False,
                "val_id": validator_id,
                "voting_power": str(constants.VALIDATORS_BALANCE_ETH),
                "proposer_priority": "0",
            }
        )

    # Token supply.
    supply = [
        {
            "denom": "pol",
            "amount": "{}000000000000000000".format(
                constants.VALIDATORS_BALANCE_ETH * len(validator_accounts)
            ),  # 18 zeros
        }
    ]

    return struct(
        accounts=accounts,
        balances=balances,
        supply=supply,
        dividends=dividends,
        validator_set=validator_set,
        total_voting_power=constants.VALIDATORS_BALANCE_ETH * len(validator_accounts),
    )
