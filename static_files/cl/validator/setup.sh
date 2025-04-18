#!/usr/bin/env bash
set -euxo pipefail

# Create CL validator configurations.
# Unfortunately, the Heimdall node id can only be retrieved using `heimdall init`.
# Thus, we need to generate the configs of each validator and aggregate all the node identifiers
# to then be able to create the list of persistent peers.

# Checking environment variables.
if [[ -z "${DEVNET_CL_TYPE}" ]]; then
  echo "Error: DEVNET_CL_TYPE environment variable is not set"
  exit 1
fi
if [[ -z "${CL_CHAIN_ID}" ]]; then
  echo "Error: CL_CHAIN_ID environment variable is not set"
  exit 1
fi
if [[ -z "${CL_CLIENT_CONFIG_PATH}" ]]; then
  echo "Error: CL_CLIENT_CONFIG_PATH environment variable is not set"
  exit 1
fi
if [[ -z "${CL_VALIDATORS_CONFIGS}" ]]; then
  echo "Error: CL_VALIDATORS_CONFIGS environment variable is not set"
  exit 1
fi
# Note: CL_VALIDATORS_CONFIGS is expected to follow this exact pattern:
# "<private_key_1>,<p2p_url_1>;<private_key_2>,<p2p_url_2>;..."
echo "DEVNET_CL_TYPE: ${DEVNET_CL_TYPE}"
echo "CL_CHAIN_ID: ${CL_CHAIN_ID}"
echo "CL_CLIENT_CONFIG_PATH: ${CL_CLIENT_CONFIG_PATH}"
echo "CL_VALIDATORS_CONFIGS: ${CL_VALIDATORS_CONFIGS}"

generate_cl_validator_config() {
  local id="${1}"
  local execution_key="${2}"
  local cometbft_address="${3}"
  local cometbft_public_key="${4}"
  local cometbft_private_key="${5}"
  local p2p_url="${6}"

  # Generate the validator key (or consensus key) using the execution key.
  local cl_validator_config_path="${CL_CLIENT_CONFIG_PATH}/${id}"
  if [[ "${DEVNET_CL_TYPE}" == "heimdall" ]]; then
    # Create an initial dummy configuration. It is needed by `heimdallcli` to run.
    heimdalld init --home "${cl_validator_config_path}" --chain-id "${CL_CHAIN_ID}" --id "${id}"

    # Generate the validator key from the execution key.
    local tmp_dir="$(mktemp -d)"
    pushd "${tmp_dir}"
    heimdallcli generate-validatorkey --home "${cl_validator_config_path}" "${execution_key}"
    mv priv_validator_key.json "${cl_validator_config_path}/config/"
    popd
    # Drop the temporary genesis.
    rm "${cl_validator_config_path}/config/genesis.json"
  elif [[ "${DEVNET_CL_TYPE}" == "heimdall-v2" ]]; then
    # Make sure all required directories exist
    mkdir -p "${cl_validator_config_path}/config"
    mkdir -p "${cl_validator_config_path}/data"

    # Create the validator key file
    echo "{
      \"address\": \"${cometbft_address#0x}\",
      \"pub_key\": {
        \"type\": \"cometbft/PubKeySecp256k1eth\",
        \"value\": \"${cometbft_public_key}\"
      },
      \"priv_key\": {
        \"type\": \"cometbft/PrivKeySecp256k1eth\",
        \"value\": \"${cometbft_private_key}\"
      }
    }" | jq >"${cl_validator_config_path}/config/priv_validator_key.json"

    # Set proper permissions
    chmod 600 "${cl_validator_config_path}/config/priv_validator_key.json"

    # Create validator state file
    echo '{"height":"0","round":0,"step":0}' | jq >"${cl_validator_config_path}/data/priv_validator_state.json"
  else
    echo "Wrong devnet CL type: ${DEVNET_CL_TYPE}"
    exit 1
  fi

  # Retrieve and store the node identifier.
  if [[ "${DEVNET_CL_TYPE}" == "heimdall" ]]; then
    heimdalld init --home "${cl_validator_config_path}" --chain-id "${CL_CHAIN_ID}" --id "${id}" 2>"${cl_validator_config_path}/init.out"
    node_id="$(jq --raw-output '.node_id' ${cl_validator_config_path}/init.out)"
  elif [[ "${DEVNET_CL_TYPE}" == "heimdall-v2" ]]; then
    heimdalld-v2 init --home "${cl_validator_config_path}" --chain-id "${CL_CHAIN_ID}" "${id}" 2>"${cl_validator_config_path}/init.out"
    # HOTFIX: heimdalld-v2 outputs info and debug lines before the json object.
    node_id="$(cat ${cl_validator_config_path}/init.out | sed '/.DBG\|INF./d' | jq --raw-output '.node_id')"
  else
    echo "Wrong devnet CL type: ${DEVNET_CL_TYPE}"
    exit 1
  fi

  # Drop the unnecessary files.
  rm -rf "${cl_validator_config_path}/config/app.toml" \
    "${cl_validator_config_path}/config/client.toml" \
    "${cl_validator_config_path}/config/config.toml" \
    "${cl_validator_config_path}/config/heimdall-config.toml" \
    "${cl_validator_config_path}/config/genesis.json"

  # Copy the validator state.
  cp "${cl_validator_config_path}/data/priv_validator_state.json" "${cl_validator_config_path}/config"

  # Return the node full address
  echo "${node_id}@${p2p_url}" >"${cl_validator_config_path}/node_full_address.txt"
}

# Loop through validators and set them up.
persistent_peers=""
id=1
IFS=';' read -ra validator_configs <<<"${CL_VALIDATORS_CONFIGS}"
for config in "${validator_configs[@]}"; do
  IFS=',' read -r execution_key cometbft_address cometbft_public_key cometbft_private_key p2p_url <<<"${config}"

  echo "Generating CL config for validator ${id}..."
  generate_cl_validator_config "${id}" "${execution_key}" "${cometbft_address}" "${cometbft_public_key}" "${cometbft_private_key}" "${p2p_url}"

  # Retrieve the node full address from the file.
  node_full_address=$(cat "${CL_CLIENT_CONFIG_PATH}/${id}/node_full_address.txt")
  if [ -z "${persistent_peers}" ]; then
    persistent_peers="${node_full_address}"
  else
    persistent_peers+=",${node_full_address}"
  fi

  ((id++))
done

# Store node identifiers.
echo "${persistent_peers}" >"${CL_CLIENT_CONFIG_PATH}/persistent_peers.txt"
echo "Persistent peers: ${persistent_peers}"
