#!/usr/bin/env bash
set -euxo pipefail

# Deploy MATIC contracts to L1, initialise state and stake for each validator.
# For reference: https://github.com/maticnetwork/contracts/tree/v0.3.11/deploy-migrations

CONTRACT_ADDRESSES_FILE="/opt/contracts/contractAddresses.json"
VALIDATORS_CONFIG_FILE="/opt/contracts/validators.js"

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

  echo "Re-compiling the MATIC contracts..."
  truffle compile
fi

echo "Configuring truffle..."
# Copy the new truffle config.
cp /opt/data/truffle-config.js /opt/contracts/truffle-config.js
# Remove some of the test contracts from the migrations because they exceed the maximum contract code size.
sed -i 's|^.*await deployer.deploy(StakeManagerTestable.*$|// &|' /opt/contracts/migrations/2_deploy_root_contracts.js

# Run the 4 first steps of the migration.
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

echo "Deploying MATIC contracts to L1, draining StakeManager and initialising state..."
truffle migrate --network l1 --f 1 --to 4 --compile-none

if [[ -s "${CONTRACT_ADDRESSES_FILE}" ]]; then
  echo "MATIC contracts deployed to L1:"
  cat "${CONTRACT_ADDRESSES_FILE}"
  echo
else
  echo "Error: ${CONTRACT_ADDRESSES_FILE} does not exist or is empty."
fi

# Stake for each validator.
if [[ -z "${VALIDATOR_ACCOUNTS}" ]]; then
  echo "Error: VALIDATOR_ACCOUNTS environment variable is not set"
  exit 1
fi
if [[ -z "${VALIDATOR_BALANCE}" ]]; then
  echo "Error: VALIDATOR_BALANCE environment variable is not set"
  exit 1
fi
if [[ -z "${VALIDATOR_STAKE_AMOUNT_ETH}" ]]; then
  echo "Error: VALIDATOR_STAKE_AMOUNT_ETH environment variable is not set"
  exit 1
fi
if [[ -z "${VALIDATOR_TOP_UP_FEE_AMOUNT_ETH}" ]]; then
  echo "Error: VALIDATOR_TOP_UP_FEE_AMOUNT_ETH environment variable is not set"
  exit 1
fi
echo "VALIDATOR_ACCOUNTS: ${VALIDATOR_ACCOUNTS}"
# Note: VALIDATOR_ACCOUNTS is expected to follow this exact pattern:
# "<address_1>,<eth_public_key_1>;<address_2>,<eth_public_key_2>;..."
echo "VALIDATOR_BALANCE: ${VALIDATOR_BALANCE}"
echo "VALIDATOR_STAKE_AMOUNT_ETH: ${VALIDATOR_STAKE_AMOUNT_ETH}"
echo "VALIDATOR_TOP_UP_FEE_AMOUNT_ETH: ${VALIDATOR_TOP_UP_FEE_AMOUNT_ETH}"

# Create the validator config file.
jq -n '[]' >"${VALIDATORS_CONFIG_FILE}"

echo "Staking for each validator node..."
IFS=';' read -ra validator_accounts <<<"${VALIDATOR_ACCOUNTS}"
for account in "${validator_accounts[@]}"; do
  IFS=',' read -r address eth_public_key <<<"${account}"
  npm run truffle exec scripts/stake.js -- --network l1 "${address}" "${eth_public_key}" "${VALIDATOR_STAKE_AMOUNT_ETH}" "${VALIDATOR_TOP_UP_FEE_AMOUNT_ETH}"

  # Update the validator config file.
  jq --arg address "${address}" --arg stake "${VALIDATOR_STAKE_AMOUNT_ETH}" --arg balance "${VALIDATOR_BALANCE}" \
    '. += [{"address": $address, "stake": ($stake | tonumber), "balance": ($balance | tonumber)}]' \
    "${VALIDATORS_CONFIG_FILE}" >"${VALIDATORS_CONFIG_FILE}.tmp"
  mv "${VALIDATORS_CONFIG_FILE}.tmp" "${VALIDATORS_CONFIG_FILE}"
done
echo "exports = module.exports = $(<${VALIDATORS_CONFIG_FILE})" >"${VALIDATORS_CONFIG_FILE}"

if [[ -s "${VALIDATORS_CONFIG_FILE}" ]]; then
  echo "Validators config created successfully."
  cat "${VALIDATORS_CONFIG_FILE}"
else
  echo "Error: ${VALIDATORS_CONFIG_FILE} does not exist or is empty."
fi
