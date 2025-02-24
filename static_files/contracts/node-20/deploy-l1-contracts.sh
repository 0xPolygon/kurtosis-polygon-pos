#!/usr/bin/env bash
set -euxo pipefail

# Deploy Polygon PoS contracts to L1, initialise state and stake for each validator.
# For reference: https://github.com/0xPolygon/pos-contracts/tree/arya/matic-cli/pos-1869

# Setting EL chain id if needed.
if [[ -z "${EL_CHAIN_ID}" ]]; then
  echo "Error: EL_CHAIN_ID environment variable is not set"
  exit 1
fi
if [[ -z "${DEFAULT_EL_CHAIN_ID}" ]]; then
  echo "Error: DEFAULT_EL_CHAIN_ID environment variable is not set"
  exit 1
fi
echo "EL_CHAIN_ID: ${EL_CHAIN_ID}"
echo "DEFAULT_EL_CHAIN_ID: ${DEFAULT_EL_CHAIN_ID}"

if [[ "${EL_CHAIN_ID}" == "${DEFAULT_EL_CHAIN_ID}" ]]; then
  echo "There is no need to set EL chain id set since EL_CHAIN_ID is already set to the default value."
else
  echo "Setting EL chain id since EL_CHAIN_ID is different than the default value..."
  npm run template:process -- --bor-chain-id "${EL_CHAIN_ID}"

  echo "Re-compiling the Polygon PoS contracts..."
  forge build
fi

# Deploy Polygon PoS contracts on L1.
if [[ -z "${PRIVATE_KEY}" ]]; then
  echo "Error: PRIVATE_KEY environment variable is not set"
  exit 1
fi
if [[ -z "${L1_RPC_URL}" ]]; then
  echo "Error: L1_RPC_URL environment variable is not set"
  exit 1
fi
if [[ -z "${CL_CHAIN_ID}" ]]; then
  echo "Error: CL_CHAIN_ID environment variable is not set"
  exit 1
fi
echo "L1_RPC_URL: ${L1_RPC_URL}"
echo "CL_CHAIN_ID: ${CL_CHAIN_ID}"

echo "Deploying Polygon PoS contracts to L1, draining StakeManager and initialising state..."
export DEPLOYER_PRIVATE_KEY="${PRIVATE_KEY}"
export HEIMDALL_ID="${CL_CHAIN_ID}"

forge script --rpc-url "${L1_RPC_URL}" --broadcast \
  scripts/deployment-scripts/deployContracts.s.sol:DeploymentScript

forge script --rpc-url "${L1_RPC_URL}" --broadcast \
  scripts/deployment-scripts/drainStakeManager.s.sol:DrainStakeManagerDeployment

forge script --rpc-url "${L1_RPC_URL}" --broadcast \
  scripts/deployment-scripts/initializeState.s.sol:InitializeStateScript

echo "Polygon PoS contracts deployed to L1:"
cat contractAddresses.json
echo

# Stake for each validator.
if [[ -z "${VALIDATOR_ACCOUNTS}" ]]; then
  echo "Error: VALIDATOR_ACCOUNTS environment variable is not set"
  exit 1
fi
if [[ -z "${VALIDATOR_BALANCE}" ]]; then
  echo "Error: VALIDATOR_BALANCE environment variable is not set"
  exit 1
fi
if [[ -z "${VALIDATOR_STAKE_AMOUNT}" ]]; then
  echo "Error: VALIDATOR_STAKE_AMOUNT environment variable is not set"
  exit 1
fi
if [[ -z "${VALIDATOR_TOP_UP_FEE_AMOUNT}" ]]; then
  echo "Error: VALIDATOR_TOP_UP_FEE_AMOUNT environment variable is not set"
  exit 1
fi
echo "VALIDATOR_ACCOUNTS: ${VALIDATOR_ACCOUNTS}"
# Note: VALIDATOR_ACCOUNTS is expected to follow this exact pattern:
# "<address_1>,<eth_public_key_1>;<address_2>,<eth_public_key_2>;..."
echo "VALIDATOR_BALANCE: ${VALIDATOR_BALANCE}"
echo "VALIDATOR_STAKE_AMOUNT: ${VALIDATOR_STAKE_AMOUNT}"
echo "VALIDATOR_TOP_UP_FEE_AMOUNT: ${VALIDATOR_TOP_UP_FEE_AMOUNT}"

# Create the validator config file.
validator_config_file="validators.js"
jq -n '[]' >"${validator_config_file}"

echo "Staking for each validator node..."
IFS=';' read -ra validator_accounts <<<"${VALIDATOR_ACCOUNTS}"
for account in "${validator_accounts[@]}"; do
  IFS=',' read -r address eth_public_key <<<"${account}"
  forge script --rpc-url "${L1_RPC_URL}" --broadcast -vvvv \
    scripts/matic-cli-scripts/stake.s.sol:MaticStake \
    --sig "run(address,bytes,uint256,uint256)" \
    "${address}" "${eth_public_key}" "${VALIDATOR_STAKE_AMOUNT}" "${VALIDATOR_TOP_UP_FEE_AMOUNT}"

  # Update the validator config file.
  jq --arg address "${address}" --arg stake "${VALIDATOR_STAKE_AMOUNT}" --arg balance "${VALIDATOR_BALANCE}" \
    '. += [{"address": $address, "stake": ($stake | tonumber), "balance": ($balance | tonumber)}]' \
    "${validator_config_file}" >"${validator_config_file}.tmp"
  mv "${validator_config_file}.tmp" "${validator_config_file}"
done
echo "exports = module.exports = $(<${validator_config_file})" >"${validator_config_file}"
echo "Validators config created successfully."

# Move files to /opt/contracts.
mkdir -p /opt/contracts
mv contractAddresses.json /opt/contracts
mv "${validator_config_file}" /opt/contracts
