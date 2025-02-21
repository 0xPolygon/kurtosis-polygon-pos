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

  echo "Generating interfaces..."
  npm run generate:interfaces

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
if [[ -z "${L2_RPC_URL}" ]]; then
  echo "Error: L2_RPC_URL environment variable is not set"
  exit 1
fi
if [[ -z "${CL_CHAIN_ID}" ]]; then
  echo "Error: CL_CHAIN_ID environment variable is not set"
  exit 1
fi
echo "L1_RPC_URL: ${L1_RPC_URL}"
echo "L2_RPC_URL: ${L2_RPC_URL}"
echo "CL_CHAIN_ID: ${CL_CHAIN_ID}"

echo "Deploying Polygon PoS contracts to L2..."
export DEPLOYER_PRIVATE_KEY="0x${PRIVATE_KEY}"
export HEIMDALL_ID="${CL_CHAIN_ID}"

forge script -vvvv --rpc-url "${L2_RPC_URL}" --private-key "0x${PRIVATE_KEY}" --broadcast \
  scripts/deployment-scripts/childContractDeployment.s.sol:ChildContractDeploymentScript

echo "Mapping L2 contracts to the registry on L1..."
forge script -vvvv --rpc-url "${L1_RPC_URL}" --private-key "0x${PRIVATE_KEY}" --broadcast \
  scripts/deployment-scripts/syncChildStateToRoot.s.sol:SyncChildStateToRootScript

echo "Polygon PoS contracts deployed to L1:"
cat contractAddresses.json
echo

# Move files to /opt/contracts.
mkdir -p /opt/contracts
mv contractAddresses.json /opt/contracts
