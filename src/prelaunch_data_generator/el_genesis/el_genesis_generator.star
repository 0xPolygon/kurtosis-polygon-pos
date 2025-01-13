constants = import_module("../../package_io/constants.star")


EL_GENESIS_CONFIG_FOLDER_PATH = "../../../static_files/genesis/el"


def generate_el_genesis_data(plan, polygon_pos_args, validator_config_artifact):
    network_params = polygon_pos_args.get("network_params", {})
    matic_contracts_params = polygon_pos_args.get("matic_contracts_params", {})

    el_genesis_config_artifact = plan.upload_files(
        src=EL_GENESIS_CONFIG_FOLDER_PATH,
        name="l2-genesis-builder-config",
    )

    return plan.run_sh(
        name="l2-el-genesis-generator",
        description="Generating L2 EL genesis",
        image=matic_contracts_params.get("genesis_builder_image", ""),
        env_vars={
            "BOR_ID": network_params.get("bor_id", ""),
            "DEFAULT_BOR_ID": constants.DEFAULT_BOR_ID,
            "HEIMDALL_ID": network_params.get("heimdall_id", ""),
            "DEFAULT_HEIMDALL_ID": constants.DEFAULT_HEIMDALL_ID,
        },
        files={
            # Load the artefacts one by one instead of using a Directory because it is not
            # supported by Kurtosis when using plan.run_sh unfortunately.
            "/opt/data/genesis": el_genesis_config_artifact,
            "/opt/data/validator": validator_config_artifact,
        },
        store=[
            StoreSpec(
                src="/opt/genesis-contracts/genesis.json",
                name="l2-el-genesis",
            ),
        ],
        run="bash /opt/data/genesis/genesis-builder.sh && cat /opt/genesis-contracts/genesis.json",
    )
