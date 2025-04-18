#!/usr/bin/env bash
set -euxo pipefail

# Generate EL node keystore, nodekey and password.

# Checking environment variables.
if [[ -z "${PRIVATE_KEY}" ]]; then
  echo "Error: PRIVATE_KEY environment variable is not set"
  exit 1
fi
if [[ -z "${EL_CLIENT_CONFIG_PATH}" ]]; then
  echo "Error: EL_CLIENT_CONFIG_PATH environment variable is not set"
  exit 1
fi
echo "PRIVATE_KEY: ${PRIVATE_KEY}"
echo "EL_CLIENT_CONFIG_PATH: ${EL_CLIENT_CONFIG_PATH}"

polycli parseethwallet --hexkey "${PRIVATE_KEY}" --keystore "${EL_CLIENT_CONFIG_PATH}/keystore"
echo "${PRIVATE_KEY}" >"${EL_CLIENT_CONFIG_PATH}/nodekey"
touch "${EL_CLIENT_CONFIG_PATH}/password.txt"
