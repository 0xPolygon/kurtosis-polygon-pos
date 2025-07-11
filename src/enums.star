# Optional additional services that can be enabled in the devnet.
ADDITIONAL_SERVICES = struct(
    blockscout="blockscout",  # Blockchain explorer
    prometheus_grafana="prometheus_grafana",  # Monitoring and metrics
    test_runner="test_runner",  # Automated test execution
    tx_spammer="tx_spammer",  # Transaction load testing
)

# Synchronization modes for Bor execution layer client.
BOR_SYNC_MODES = struct(
    archive="archive",  # Full archive node with all historical data
    full="full",  # Full node with recent state
    snap="snap",  # Fast sync using snapshots
)

# Consensus layer network environments.
CL_ENVIRONMENT = struct(
    local="local",  # Local development environment
    mainnet="mainnet",  # Production mainnet
    mumbai="mumbai",  # Mumbai testnet
)

# Consensus layer client implementations.
CL_TYPE = struct(
    heimdall="heimdall",  # Original Heimdall consensus client
    heimdall_v2="heimdall-v2",  # Heimdall v2 with CometBFT
)

# Execution layer client implementations.
EL_TYPE = struct(
    bor="bor",  # Standard Bor execution client
    bor_modified_for_heimdall_v2="bor-modified-for-heimdall-v2",  # Bor modified for Heimdall v2 compatibility
    erigon="erigon",  # Erigon execution client
)

# Logging verbosity levels.
LOG_LEVEL = struct(
    debug="debug",  # Detailed debugging information
    error="error",  # Error messages only
    info="info",  # General information
    trace="trace",  # Most verbose tracing
    warn="warn",  # Warning messages
)

# Participant roles in the Polygon PoS network.
PARTICIPANT_KIND = struct(
    rpc="rpc",  # RPC node providing external API access
    validator="validator",  # Validator node participating in consensus
)
