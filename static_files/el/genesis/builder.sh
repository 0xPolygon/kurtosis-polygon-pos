#!/usr/bin/env bash
set -euxo pipefail

# Build L2 EL genesis file.
# For reference: https://github.com/maticnetwork/genesis-contracts

EL_GENESIS_ALLOC_FILE="/opt/genesis-contracts/genesis.json"
EL_GENESIS_FILE="/opt/data/genesis/genesis.json"

# Checking environment variables.
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

if [[ -z "${CL_CHAIN_ID}" ]]; then
  echo "Error: CL_CHAIN_ID environment variable is not set"
  exit 1
fi
if [[ -z "${DEFAULT_CL_CHAIN_ID}" ]]; then
  echo "Error: DEFAULT_CL_CHAIN_ID environment variable is not set"
  exit 1
fi
echo "CL_CHAIN_ID: ${CL_CHAIN_ID}"
echo "DEFAULT_CL_CHAIN_ID: ${DEFAULT_CL_CHAIN_ID}"

if [[ -z "${ADMIN_ADDRESS}" ]]; then
  echo "Error: ADMIN_ADDRESS environment variable is not set"
  exit 1
fi
if [[ -z "${ADMIN_BALANCE_WEI}" ]]; then
  echo "Error: ADMIN_BALANCE_WEI environment variable is not set"
  exit 1
fi
echo "ADMIN_ADDRESS: ${ADMIN_ADDRESS}"
echo "ADMIN_BALANCE_WEI: ${ADMIN_BALANCE_WEI}"

# Regenerate the validator set if needed.
if [[ "${EL_CHAIN_ID}" == "${DEFAULT_EL_CHAIN_ID}" && "${CL_CHAIN_ID}" == "${DEFAULT_CL_CHAIN_ID}" ]]; then
  echo "There is no need to regenerate the validator set since EL_CHAIN_ID and CL_CHAIN_ID are already set to their default values."
else
  echo "Generating the validator set since EL_CHAIN_ID and/or CL_CHAIN_ID are different than the default values..."
  node generate-borvalidatorset.js --bor-chain-id "${EL_CHAIN_ID}" --heimdall-chain-id "${CL_CHAIN_ID}"

  echo "Re-compiling the genesis contracts..."
  truffle compile
fi

# Generate the EL genesis alloc field.
echo "Generating the genesis file..."
cp /opt/data/validator/validators.js validators.js
node generate-genesis.js --bor-chain-id "${EL_CHAIN_ID}" --heimdall-chain-id "${CL_CHAIN_ID}"
if [[ -s "${EL_GENESIS_ALLOC_FILE}" ]]; then
  echo "EL genesis alloc field generated."
else
  echo "Error: ${EL_GENESIS_ALLOC_FILE} does not exist or is empty."
fi

# Prefund the admin address.
admin_address=$(echo "${ADMIN_ADDRESS}" | sed 's/^0x//')
jq --arg a "${admin_address}" --arg b "${ADMIN_BALANCE_WEI}" \
  '.alloc[$a] = {"balance": $b}' "${EL_GENESIS_ALLOC_FILE}" >tmp.json
mv tmp.json "${EL_GENESIS_ALLOC_FILE}"

# Add the alloc field to the temporary EL genesis to create the final EL genesis.
jq --arg key 'alloc' '. + {($key): input | .[$key]}' \
  "${EL_GENESIS_FILE}" "${EL_GENESIS_ALLOC_FILE}" >tmp.json
mv tmp.json "${EL_GENESIS_FILE}"

# Add the current timestamp to the EL genesis.
timestamp=$(printf "0x%x" $(date +%s))
jq --arg t "${timestamp}" '.timestamp = $t' "${EL_GENESIS_FILE}" > tmp.json
mv tmp.json "${EL_GENESIS_FILE}"

if [[ -s "${EL_GENESIS_FILE}" ]]; then
  echo "L2 EL genesis:"
  cat "${EL_GENESIS_FILE}"
else
  echo "Error: ${EL_GENESIS_FILE} does not exist or is empty."
fi
