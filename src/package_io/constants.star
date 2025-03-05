math = import_module("../math/math.star")


EL_TYPE = struct(
    bor="bor",
    bor_modified_for_heimdall_v2="bor-modified-for-heimdall-v2",
    erigon="erigon",
)

CL_TYPE = struct(
    heimdall="heimdall",
    heimdall_v2="heimdall-v2",
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
    tx_spammer="tx_spammer",
)

# Package dependencies.
ETHEREUM_PACKAGE = "github.com/ethpandaops/ethereum-package/main.star@4.5.0"
PROMETHEUS_PACKAGE = "github.com/kurtosis-tech/prometheus-package/main.star@f5ce159aec728898e3deb827f6b921f8ecfc527f"
GRAFANA_PACKAGE = "github.com/kurtosis-tech/grafana-package/main.star@cc66468b167d16c0fc7153980be5b67550be01be"

DEFAULT_L1_CHAIN_ID = "3151908"  # 0x301824
DEFAULT_EL_CHAIN_ID = "4927"
DEFAULT_CL_CHAIN_ID = "heimdall-4927"  # Follows the standard "heimdall-<el_chain_id>".

ADMIN_BALANCE_ETH = math.pow(10, 9)
VALIDATORS_BALANCE_ETH = math.pow(10, 9)

CL_CLIENT_CONFIG_PATH = "/etc/cl"
EL_CLIENT_CONFIG_PATH = "/etc/el"

RABBITMQ_USERNAME = "guest"
RABBITMQ_PASSWORD = "guest"
