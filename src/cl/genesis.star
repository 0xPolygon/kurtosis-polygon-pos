constants = import_module("../config/constants.star")
contract_util = import_module("../contracts/util.star")
heimdall_genesis = import_module("./heimdall/genesis.star")
heimdall_v2_genesis = import_module("./heimdall_v2/genesis.star")


CL_GENESIS_BUILDER_SCRIPT_FILE_PATH = "../../static_files/cl/genesis/builder.sh"
HEIMDALL_GENESIS_TEMPLATE_FILE_PATH = {
    constants.CL_TYPE.heimdall: "../../static_files/cl/heimdall/genesis.json",
    constants.CL_TYPE.heimdall_v2: "../../static_files/cl/heimdall_v2/genesis.json",
}


def generate(
    plan,
    polygon_pos_args,
    devnet_cl_type,
    validator_accounts,
    contract_addresses_artifact,
):
    network_params = polygon_pos_args.get("network_params")
    validators_number = len(validator_accounts)

    cl_genesis_data = {}
    if devnet_cl_type == constants.CL_TYPE.heimdall:
        validator_data = heimdall_genesis.get_validator_data(validator_accounts)
        proposer = []
        if validators_number > 0:
            proposer = validator_data.validator_set[0]
        cl_genesis_data = {
            "accounts": json.indent(json.encode(validator_data.accounts)),
            "dividend_accounts": json.indent(json.encode(validator_data.dividends)),
            "signing_infos": json.indent(json.encode(validator_data.signing_infos)),
            "validators": json.indent(json.encode(validator_data.validator_set)),
            "proposer": json.indent(json.encode(proposer)),
            "producer_count": len(validator_data.validator_set),
        }
    elif devnet_cl_type == constants.CL_TYPE.heimdall_v2:
        validator_data = heimdall_v2_genesis.get_validator_data(validator_accounts)
        proposer = []
        if validators_number > 0:
            proposer = validator_data.validator_set[0]
        cl_genesis_data = {
            "accounts": json.indent(json.encode(validator_data.accounts)),
            "balances": json.indent(json.encode(validator_data.balances)),
            "supply": json.indent(json.encode(validator_data.supply)),
            "dividend_accounts": json.indent(json.encode(validator_data.dividends)),
            "validators": json.indent(json.encode(validator_data.validator_set)),
            "proposer": json.indent(json.encode(proposer)),
            "producer_count": len(validator_data.validator_set),
            "total_voting_power": validator_data.total_voting_power,
        }

    el_span_duration = network_params.get("el_span_duration")
    l1_matic_token_address = contract_util.get_address(
        plan,
        contract_name="l1_matic_token",
        contract_addresses_artifact=contract_addresses_artifact,
    )
    l1_stake_manager_proxy_address = contract_util.get_address(
        plan,
        contract_name="l1_stake_manager_proxy",
        contract_addresses_artifact=contract_addresses_artifact,
    )
    l1_slashing_manager_address = contract_util.get_address(
        plan,
        contract_name="l1_slashing_manager",
        contract_addresses_artifact=contract_addresses_artifact,
    )
    l1_root_chain_proxy_address = contract_util.get_address(
        plan,
        contract_name="l1_root_chain_proxy",
        contract_addresses_artifact=contract_addresses_artifact,
    )
    l1_staking_info_address = contract_util.get_address(
        plan,
        contract_name="l1_staking_info",
        contract_addresses_artifact=contract_addresses_artifact,
    )
    l1_state_sender_address = contract_util.get_address(
        plan,
        contract_name="l1_state_sender",
        contract_addresses_artifact=contract_addresses_artifact,
    )

    cl_genesis_temporary_artifact = plan.render_templates(
        name="l2-cl-genesis-tmp",
        config={
            "genesis-tmp.json": struct(
                template=read_file(HEIMDALL_GENESIS_TEMPLATE_FILE_PATH[devnet_cl_type]),
                data={
                    # chain params
                    "cl_chain_id": network_params.get("cl_chain_id"),
                    "el_chain_id": network_params.get("el_chain_id"),
                    "el_sprint_duration": network_params.get("el_sprint_duration"),
                    "el_span_duration": el_span_duration,
                    "el_first_span_end_block": el_span_duration - 1,
                    # contract addresses
                    "matic_token_address": l1_matic_token_address,
                    "stake_manager_address": l1_stake_manager_proxy_address,
                    "slashing_manager_address": l1_slashing_manager_address,
                    "root_chain_proxy_address": l1_root_chain_proxy_address,
                    "staking_info_address": l1_staking_info_address,
                    "state_sender_address": l1_state_sender_address,
                }
                | cl_genesis_data,
            ),
        },
    )

    # The template that Kurtosis generates is not a valid json thus if you want to check the content
    # of the file artifact, Kurtosis will render an empty file... This is a hack to format the file
    # with jq and get a working artifact.
    cl_genesis_builder_script_artifact = plan.upload_files(
        src=CL_GENESIS_BUILDER_SCRIPT_FILE_PATH,
        name="l2-cl-genesis-builder-config",
    )
    result = plan.run_sh(
        name="l2-cl-genesis-generator",
        description="Generating L2 CL genesis",
        files={
            "/opt/data/genesis": cl_genesis_temporary_artifact,
            "/opt/data/genesis-builder": cl_genesis_builder_script_artifact,
        },
        store=[
            StoreSpec(
                src="/opt/data/genesis/genesis.json",
                name="l2-cl-genesis",
            ),
        ],
        run="sh /opt/data/genesis-builder/builder.sh",
    )
    artifact_count = len(result.files_artifacts)
    if artifact_count != 1:
        fail(
            "The CL genesis generator should have generated 1 artifact, got {}.".format(
                artifact_count
            )
        )
    l2_cl_genesis_artifact = result.files_artifacts[0]
    return l2_cl_genesis_artifact
