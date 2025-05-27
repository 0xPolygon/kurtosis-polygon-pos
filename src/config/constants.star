math = import_module("../math/math.star")

PARTICIPANT_KIND = struct(
    validator="validator",
    rpc="rpc",
)

EL_TYPE = struct(
    bor="bor",
    bor_modified_for_heimdall_v2="bor-modified-for-heimdall-v2",
    erigon="erigon",
)

CL_TYPE = struct(
    heimdall="heimdall",
    heimdall_v2="heimdall-v2",
)

CL_ENVIRONMENT = struct(
    mainnet="mainnet",
    mumbai="mumbai",
    local="local",
)

LOG_LEVEL = struct(
    error="error",
    warn="warn",
    info="info",
    debug="debug",
    trace="trace",
)

ADDITIONAL_SERVICES = struct(
    blockscout="blockscout",
    prometheus_grafana="prometheus_grafana",
    test_runner="test_runner",
    tx_spammer="tx_spammer",
)

DEFAULT_L1_CHAIN_ID = "3151908"  # 0x301824
DEFAULT_EL_CHAIN_ID = "4927"
DEFAULT_CL_CHAIN_ID = "heimdall-4927"  # Follows the standard "heimdall-<el_chain_id>".

ADMIN_BALANCE_ETH = math.pow(10, 9)
VALIDATORS_BALANCE_ETH = math.pow(10, 9)

CL_CLIENT_CONFIG_PATH = "/etc/cl"
EL_CLIENT_CONFIG_PATH = "/etc/el"

RABBITMQ_USERNAME = "guest"
RABBITMQ_PASSWORD = "guest"

TOOLBOX_IMAGE = "leovct/toolbox:0.0.8"
