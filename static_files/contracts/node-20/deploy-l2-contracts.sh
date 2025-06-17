#!/usr/bin/env bash
set -euxo pipefail

# Deploy MATIC contracts to L2 and synchronize state on L1.
# For reference: https://github.com/0xPolygon/pos-contracts/tree/arya/matic-cli/pos-1869

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

  echo "Generating interfaces..."
  npm run generate:interfaces

  echo "Re-compiling the Polygon PoS contracts..."
  forge build
fi

echo "Copying contract addresses file..."
cp /opt/data/addresses/contractAddresses.json /opt/pos-contracts/contractAddresses.json

# Deploy Polygon PoS contracts on L2.
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

echo "Deploying Polygon PoS contracts to L2..."
export DEPLOYER_PRIVATE_KEY="${PRIVATE_KEY}"

forge script --rpc-url "${L2_RPC_URL}" --broadcast --legacy \
  scripts/deployment-scripts/childContractDeployment.s.sol:ChildContractDeploymentScript

echo "Mapping L2 contracts to the registry on L1..."
forge script --rpc-url "${L1_RPC_URL}" --broadcast --legacy \
  scripts/deployment-scripts/syncChildStateToRoot.s.sol:SyncChildStateToRootScript

mkdir -p /opt/contracts
mv contractAddresses.json /opt/contracts

if [[ -s "${CONTRACT_ADDRESSES_FILE}" ]]; then
  echo "Polygon PoS contracts deployed to L1 and L2:"
  cat "${CONTRACT_ADDRESSES_FILE}"
else
  echo "Error: ${CONTRACT_ADDRESSES_FILE} does not exist or is empty."
fi
