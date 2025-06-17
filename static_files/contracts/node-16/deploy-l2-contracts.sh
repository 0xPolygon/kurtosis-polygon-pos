#!/usr/bin/env bash
set -euxo pipefail

# Deploy MATIC contracts to L2 and synchronize state on L1.
# For reference: https://github.com/maticnetwork/contracts/tree/v0.3.11/deploy-migrations

CONTRACT_ADDRESSES_FILE="/opt/contracts/contractAddresses.json"

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
# Remove the condition that prevents running migrations on L2 networks that have different names than "bor".
# https://github.com/maticnetwork/contracts/blob/mardizzone/node-16/migrations/5_deploy_child_contracts.js#L15C3-L17
sed -i '15,17d' /opt/contracts/migrations/5_deploy_child_contracts.js

echo "Copying contract addresses file..."
cp /opt/data/addresses/contractAddresses.json /opt/contracts/contractAddresses.json

# Run the 5th and 6th steps of the migration.
if [[ -z "${PRIVATE_KEY}" ]]; then
  echo "Error: PRIVATE_KEY environment variable is not set"
  exit 1
fi
if [[ -z "${L1_RPC_URL}" ]]; then
  echo "Error: L1_RPC_URL environment variable is not set"
  exit 1
fi
if [[ -z "${L2_RPC_URL}" ]]; then
  echo "Error: L2_RPC_URL environment variable is not set"
  exit 1
fi
echo "L1_RPC_URL: ${L1_RPC_URL}"
echo "L2_RPC_URL: ${L2_RPC_URL}"

echo "Deploying MATIC contracts to L2..."
truffle migrate --network l2 --f 5 --to 5 --compile-none

echo "Mapping L2 contracts to the registry on L1..."
truffle migrate --network l1 --f 6 --to 6 --compile-none

if [[ -s "${CONTRACT_ADDRESSES_FILE}" ]]; then
  echo "MATIC contracts deployed to L1 and L2:"
  cat "${CONTRACT_ADDRESSES_FILE}"
else
  echo "Error: ${CONTRACT_ADDRESSES_FILE} does not exist or is empty."
fi
