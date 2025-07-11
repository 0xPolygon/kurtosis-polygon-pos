
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

# Generating Ethereum/Tendermint accounts.
echo "Generating Ethereum accounts..."
polycli wallet inspect --mnemonic "${MNEMONIC}" --addresses "${ACCOUNTS_NUMBER}" |
  jq '[.Addresses[] | {Path: .Path, ETHAddress: .ETHAddress, ETHPublicKey: ("0x" + .HexFullPublicKey), ETHPrivateKey: .HexPrivateKey}]' \
    >eth_accounts.json

# Generating CometBFT accounts (secp256k1).
jq --compact-output '.[]' eth_accounts.json | while read -r account; do
  eth_public_key=$(echo "${account}" | jq --raw-output '.ETHPublicKey' | sed 's/^0x/04/')
  eth_public_key_base64=$(echo "${eth_public_key}" | xxd -r -p | base64 | tr -d '\n')

  eth_private_key=$(echo "${account}" | jq --raw-output '.ETHPrivateKey')
  eth_private_key_base64=$(echo "${eth_private_key}" | xxd -r -p | base64 | tr -d '\n')

  echo "${account}" | jq --arg pub "${eth_public_key_base64}" --arg priv "${eth_private_key_base64}" \
    '. + {CometBftAddress: .ETHAddress, CometBftPublicKey: $pub, CometBftPrivateKey: $priv}'
done | jq --slurp '.' >eth_cometbft_accounts.json

echo "Generating the Starlark accounts.star file..."
jq --raw-output '[.[] | "    # \(.Path)\n    account.new_validator(\n        # ETH/Tendermint account - used by heimdall validators.\n        account.new(\n            \"\(.ETHAddress)\",\n            \"\(.ETHPublicKey)\",\n            \"\(.ETHPrivateKey)\",\n        ),\n        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.\n        account.new(\n            \"\(.CometBftAddress)\",\n            \"\(.CometBftPublicKey)\",\n            \"\(.CometBftPrivateKey)\",\n        ),\n    ),"] | "account = import_module(\"../utils/account/account.star\")\n\nPREFUNDED_ACCOUNTS = [\n" + (join("\n")) + "\n]"' eth_cometbft_accounts.json >accounts.star

echo "Cleaning up..."
rm -rf eth_accounts.json eth_cometbft_accounts.json priv_validator_key.json logs.txt data/

echo "✅ Done!"
