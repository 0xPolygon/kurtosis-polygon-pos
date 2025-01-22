#!/usr/bin/env bash
set -uxo pipefail

# Generate a number of Ethereum/Tendermint/CometBFT accounts to be prefunded.

# Checking environment variables.
if [[ -z "${ACCOUNTS_NUMBER}" ]]; then
  echo "Error: ACCOUNTS_NUMBER environment variable is not set"
  exit 1
fi
if [[ -z "${MNEMONIC}" ]]; then
  echo "Error: MNEMONIC environment variable is not set"
  exit 1
fi
echo "ACCOUNTS_NUMBER: ${ACCOUNTS_NUMBER}"
echo "MNEMONIC: ${MNEMONIC}"

# Generating Ethereum accounts.
echo "Generating Ethereum accounts..."
polycli wallet inspect --mnemonic "${MNEMONIC}" --addresses "${ACCOUNTS_NUMBER}" |
  jq '[.Addresses[] | {Path: .Path, ETHAddress: .ETHAddress, ETHPublicKey: ("0x" + .HexFullPublicKey), PrivateKey: .HexPrivateKey}]' \
    >eth_accounts.json

# Generating CometBFT accounts.
# cl_client_config_path="/etc/heimdall"
# echo "Generating CometBFT accounts... It might take a while..."
# # The command is not deterministic so the CometBFT public keys are going to change every time.
# # NOTE: Use heimdalld-v2 generate-validator-key instead of heimdalld-v2 create-testnet once the command is ready to be used.
# heimdalld-v2 create-testnet --home "${cl_client_config_path}" --v "${ACCOUNTS_NUMBER}" --n 0 --output-dir "${cl_client_config_path}/devnet"
# index=0
# jq --compact-output '.[]' eth_accounts.json | while read -r account; do
#   cometbft_public_key=$(jq --raw-output '.pub_key.value' "${cl_client_config_path}/devnet/node${index}/heimdalld/config/priv_validator_key.json")
#   echo "${account}" | jq --arg v "${cometbft_public_key}" '. + {CometBftPublicKey: $v}'
#   ((index++))
# done | jq --slurp '.' >eth_cometbft_accounts.json

echo "Generating the Starlark pre_funded_accounts.star file..."
jq --raw-output '[.[] | "    # \(.Path)\n    genesis_constants.new_prefunded_account(\n        \"\(.ETHAddress)\",\n        \"\(.ETHPublicKey)\",\n        \"\(.CometBftPublicKey)\",\n        \"\(.PrivateKey)\",\n    ),"] | "genesis_constants = import_module(\"./genesis_constants.star\")\n\nPRE_FUNDED_ACCOUNTS = [\n" + (join("\n")) + "\n]"' eth_accounts.json >pre_funded_accounts.star

echo "Cleaning up..."
rm -rf eth_accounts.json eth_cometbft_accounts.json priv_validator_key.json logs.txt data/

echo "✅ Done!"
