math = import_module("../utils/math/math.star")
enums = import_module("../enums.star")

# Docker images

CONTRACT_DEPLOYER_IMAGE = "leovct/pos-contract-deployer-node-20:ed58f8a"
EL_GENESIS_BUILDER_IMAGE = "leovct/pos-el-genesis-builder:96a19dd"
VALIDATOR_CONFIG_GENERATOR_IMAGE = "leovct/pos-validator-config-generator:1.6.0-0.2.7"  # Based on 0xpolygon/heimdall:1.6.0 and 0xpolygon/heimdall-v2:0.2.7.

EL_IMAGES = {
    enums.EL_TYPE.bor: "0xpolygon/bor:2.2.8",
    enums.EL_TYPE.bor_modified_for_heimdall_v2: "leovct/bor:581a230ed-fix",  # There is no official image yet.
    enums.EL_TYPE.erigon: "erigontech/erigon:v3.0.13",
}

CL_IMAGES = {
    enums.CL_TYPE.heimdall: "0xpolygon/heimdall:1.6.0",
    enums.CL_TYPE.heimdall_v2: "0xpolygon/heimdall-v2:0.2.7",
}

CL_DB_IMAGE = "rabbitmq:4.1.2"
E2E_TEST_IMAGE = "leovct/e2e:9fe80e1"
TOOLBOX_IMAGE = "leovct/toolbox:0.0.8"

# Configuration

L1_CHAIN_ID = "3151908"  # 0x301824
CL_CHAIN_ID = "heimdall-4927"  # Follows the standard "heimdall-<el_chain_id>".
EL_CHAIN_ID = "4927"

ADMIN_BALANCE_ETH = math.pow(10, 9)
VALIDATORS_BALANCE_ETH = math.pow(10, 9)

CL_CLIENT_CONFIG_PATH = "/etc/cl"
EL_CLIENT_CONFIG_PATH = "/etc/el"

RABBITMQ_USERNAME = "guest"
RABBITMQ_PASSWORD = "guest"
