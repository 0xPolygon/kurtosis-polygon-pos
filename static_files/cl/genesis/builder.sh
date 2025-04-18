#!/usr/bin/env sh
# The shebang was changed from bash to sh for compatibility with the badouralix/curl-jq image.
set -eux

# Build L2 CL genesis file.

CL_GENESIS_FILE="/opt/data/genesis/genesis.json"

# The genesis file is already generated using a template.
jq . /opt/data/genesis/genesis-tmp.json >"${CL_GENESIS_FILE}"

# Add the current date to the CL genesis.
# 2025-01-31T22:51:08.000000000Z
date=$(date -u +"%Y-%m-%dT%H:%M:%S.%NZ" | tr -d "\n")
date="${date}000000000Z"
jq --arg d "${date}" '.genesis_time = $d' "${CL_GENESIS_FILE}" >tmp.json
mv tmp.json "${CL_GENESIS_FILE}"

if [ -s "${CL_GENESIS_FILE}" ]; then
  echo "L2 CL genesis:"
  cat "${CL_GENESIS_FILE}"
else
  echo "Error: ${CL_GENESIS_FILE} does not exist or is empty."
fi
