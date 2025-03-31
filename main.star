account_util = import_module(
    "./src/prelaunch_data_generator/genesis_constants/account.star"
)
blockscout = import_module("./src/additional_services/blockscout.star")
cl_genesis_generator = import_module(
    "./src/prelaunch_data_generator/cl_genesis/cl_genesis_generator.star"
)
constants = import_module("./src/package_io/constants.star")
contract_deployer = import_module("./src/contracts/contract_deployer.star")
el_cl_launcher = import_module("./src/el_cl_launcher.star")
el_genesis_generator = import_module(
    "./src/prelaunch_data_generator/el_genesis/el_genesis_generator.star"
)
hex = import_module("./src/hex/hex.star")
input_parser = import_module("./src/package_io/input_parser.star")
math = import_module("./src/math/math.star")
pre_funded_accounts = import_module(
    "./src/prelaunch_data_generator/genesis_constants/pre_funded_accounts.star"
)
prometheus_grafana = import_module("./src/additional_services/prometheus_grafana.star")
test_runner = import_module("./src/additional_services/test_runner.star")
wait = import_module("./src/wait/wait.star")

ETHEREUM_PACKAGE = "github.com/ethpandaops/ethereum-package/main.star@4.4.0"


def run(plan, args):
    # Parse L1, L2 and dev input args.
    args = input_parser.input_parser(plan, args)
    ethereum_args = args.get("ethereum_package")
    polygon_pos_args = args.get("polygon_pos_package")
    dev_args = args.get("dev")

    participants = polygon_pos_args.get("participants")
    validator_accounts = get_validator_accounts(participants)
    l2_network_params = polygon_pos_args.get("network_params")
    admin_private_key = hex.normalize(
        l2_network_params.get("admin_private_key")
    )  # Used to deploy Polygon PoS contracts on both L1 and L2.

    # Determine the devnet CL type to be able to select the appropriate validator address format later.
    devnet_cl_type = participants[0].get("cl_type")

    # Deploy a local L1 if needed.
    # Otherwise, use the provided rpc url.
    if dev_args.get("should_deploy_l1"):
        plan.print(
            "Deploying a local L1 with the following input args: {}".format(
                ethereum_args
            )
        )
        l1 = deploy_local_l1(
            plan,
            ethereum_args,
            l2_network_params.get("preregistered_validator_keys_mnemonic"),
        )
        prefunded_accounts_count = len(l1.pre_funded_accounts)
        if prefunded_accounts_count < 13:
            fail(
                "The L1 package did not prefund enough accounts. Expected at least 13 accounts but got {}".format(
                    prefunded_accounts_count
                )
            )
        if len(l1.all_participants) < 1:
            fail("The L1 package did not start any participants.")
        l1_context = struct(
            chain_id=l1.network_id,
            private_key=admin_private_key,
            rpc_url=l1.all_participants[0].el_context.rpc_http_url,
            all_participants=l1.all_participants,
        )
    else:
        plan.print("Using an external l1")
        l1_rpc_url = dev_args.get("l1_rpc_url")
        l1_chain_id = plan.run_sh(
            name="l1-chain-id-getter",
            description="Getting external L1 chain id",
            image="ghcr.io/foundry-rs/foundry:stable",
            run="cast to-dec $(cast rpc eth_chainId --rpc-url ${L1_RPC_URL} | sed 's/\"//g')",
            env_vars={
                "L1_RPC_URL": l1_rpc_url,
            },
        )
        l1_context = struct(
            chain_id=l1_chain_id,
            private_key=admin_private_key,
            rpc_url=l1_rpc_url,
            all_participants=None,
        )

    # Deploy MATIC contracts to L1 and generate the EL and CL genesis files if needed.
    # Otherwise, use the provided EL and CL genesis files.
    if dev_args.get("should_deploy_matic_contracts"):
        plan.print("Number of validators: {}".format(len(validator_accounts)))
        plan.print(validator_accounts)

        result = contract_deployer.deploy_l1_contracts(
            plan,
            polygon_pos_args,
            l1_context.rpc_url,
            admin_private_key,
            validator_accounts,
        )
        artifact_count = len(result.files_artifacts)
        if artifact_count != 2:
            fail(
                "The L1 contract deployer should have generated 2 artifacts, got {}.".format(
                    artifact_count
                )
            )
        l1_contract_addresses_artifact = result.files_artifacts[0]
        validator_config_artifact = result.files_artifacts[1]

        result = cl_genesis_generator.generate_cl_genesis_data(
            plan,
            polygon_pos_args,
            devnet_cl_type,
            validator_accounts,
            l1_contract_addresses_artifact,
        )
        artifact_count = len(result.files_artifacts)
        if artifact_count != 1:
            fail(
                "The CL genesis generator should have generated 1 artifact, got {}.".format(
                    artifact_count
                )
            )
        l2_cl_genesis_artifact = result.files_artifacts[0]

        result = el_genesis_generator.generate_el_genesis_data(
            plan,
            polygon_pos_args,
            validator_config_artifact,
            l2_network_params.get("admin_address"),
        )
        artifact_count = len(result.files_artifacts)
        if artifact_count != 1:
            fail(
                "The EL genesis generator should have generated 1 artifact, got {}.".format(
                    artifact_count
                )
            )
        l2_el_genesis_artifact = result.files_artifacts[0]
    else:
        plan.print("Using L2 EL/CL genesis provided")
        l2_el_genesis_artifact = plan.render_templates(
            name="l2-el-genesis",
            config={
                "genesis.json": struct(
                    template=read_file(src=dev_args.get("l2_el_genesis_filepath")),
                    data={},
                )
            },
        )
        l2_cl_genesis_artifact = plan.render_templates(
            name="l2-cl-genesis",
            config={
                "genesis.json": struct(
                    template=read_file(src=dev_args.get("l2_cl_genesis_filepath")),
                    data={},
                )
            },
        )

        plan.print("Using matic contract addresses provided")
        l1_contract_addresses_artifact = plan.render_templates(
            name="matic-contract-addresses",
            config={
                "contractAddresses.json": struct(
                    template=read_file(
                        src=dev_args.get("matic_contract_addresses_filepath", "")
                    ),
                    data={},
                )
            },
        )

    # Deploy network participants.
    participants_count = math.sum([p.get("count") for p in participants])
    plan.print(
        "Launching a Polygon PoS devnet with {} participants, including {} validators, and the following network params: {}".format(
            participants_count, len(validator_accounts), participants
        )
    )
    l2_context = el_cl_launcher.launch(
        plan,
        participants,
        polygon_pos_args,
        l2_el_genesis_artifact,
        l2_cl_genesis_artifact,
        l1_context.rpc_url,
        devnet_cl_type,
    )
    l2_rpc_url = l2_context.all_participants[0].el_context.rpc_http_url

    # Deploy MATIC contracts to L2.
    result = contract_deployer.deploy_l2_contracts_and_synchronise_l1_state(
        plan,
        polygon_pos_args,
        l1_context.rpc_url,
        l2_rpc_url,
        admin_private_key,
        l1_contract_addresses_artifact,
    )
    artifact_count = len(result.files_artifacts)
    if artifact_count != 1:
        fail(
            "The L2 contract deployer should have generated 1 artifact, got {}.".format(
                artifact_count
            )
        )
    contract_addresses_artifact = result.files_artifacts[0]

    # Deploy additional services.
    additional_services = polygon_pos_args.get("additional_services")
    for svc in additional_services:
        if svc == constants.ADDITIONAL_SERVICES.blockscout:
            blockscout.launch(plan)
        elif svc == constants.ADDITIONAL_SERVICES.prometheus_grafana:
            prometheus_grafana.launch(
                plan,
                l1_context,
                l2_context,
                l2_el_genesis_artifact,
                contract_addresses_artifact,
            )
        elif svc == constants.ADDITIONAL_SERVICES.test_runner:
            test_runner.launch(
                plan,
                l1_context,
                l2_context,
                l2_network_params,
                l2_el_genesis_artifact,
                contract_addresses_artifact,
            )
        else:
            fail("Invalid additional service: %s" % (svc))


def get_validator_accounts(participants):
    prefunded_accounts = pre_funded_accounts.PRE_FUNDED_ACCOUNTS

    validator_accounts = []
    participant_index = 0
    for participant in participants:
        for _ in range(participant.get("count")):
            if participant.get("is_validator"):
                if participant_index >= len(prefunded_accounts):
                    fail(
                        "Having more than {} validators is not supported for now.".format(
                            len(prefunded_accounts)
                        )
                    )
                account = prefunded_accounts[participant_index]
                validator_accounts.append(account)
            # Increment the participant index.
            participant_index += 1

    if len(validator_accounts) == 0:
        fail("There must be at least one validator among the participants!")

    return validator_accounts


def deploy_local_l1(plan, ethereum_args, preregistered_validator_keys_mnemonic):
    # Sanity check the mnemonic used.
    # TODO: Remove this limitation.
    l2_network_params = input_parser.DEFAULT_POLYGON_POS_PACKAGE_ARGS.get(
        "network_params"
    )
    default_l2_mnemonic = l2_network_params.get("preregistered_validator_keys_mnemonic")
    if preregistered_validator_keys_mnemonic != default_l2_mnemonic:
        fail("Using a different mnemonic is not supported for now.")

    # Define prefunded accounts on L1.
    l1_network_params = ethereum_args.get("network_params")
    prefunded_accounts = _merge_l1_prefunded_accounts(
        l2_network_params.get("admin_address"), l1_network_params
    )
    ethereum_args["network_params"] = l1_network_params | {
        "prefunded_accounts": prefunded_accounts
    }

    # Deploy the ethereum package.
    l1 = import_module(ETHEREUM_PACKAGE).run(plan, ethereum_args)
    plan.print(l1)
    if len(l1.all_participants) < 1:
        fail("The L1 package did not start any participants.")

    wait.wait_for_l1_startup(
        plan, str(l1.all_participants[0].cl_context.beacon_http_url)
    )
    return l1


def _merge_l1_prefunded_accounts(admin_address, l1_network_params):
    # Merge the prefunded accounts (admin and validators) with the user-specified prefuned accounts.
    admin_prefunded_account = account_util.to_ethereum_pkg_prefunded_account(
        admin_address, constants.ADMIN_BALANCE_ETH
    )

    validators_prefunded_accounts = {}
    for a in pre_funded_accounts.PRE_FUNDED_ACCOUNTS:
        validators_prefunded_accounts |= account_util.to_ethereum_pkg_prefunded_account(
            a.eth_tendermint.address, constants.VALIDATORS_BALANCE_ETH
        )

    user_prefunded_accounts = {}
    user_prefunded_accounts_str = l1_network_params.get("prefunded_accounts")
    if user_prefunded_accounts_str != "":
        user_prefunded_accounts = json.decode(user_prefunded_accounts_str)

    return (
        admin_prefunded_account
        | validators_prefunded_accounts
        | user_prefunded_accounts
    )
