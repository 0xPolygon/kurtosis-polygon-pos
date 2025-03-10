#!/usr/bin/env bash
set -euo pipefail

# Deposit ERC20 to trigger a state sync.

# Define a few environment variables required to run the script.
# Note that the funder private key must have enough ether and ERC20 tokens to fund the test account.
if [[ -z "${L1_RPC_URL}" ]]; then
  echo "Error: L1_RPC_URL environment variable is not set"
  exit 1
fi
if [[ -z "${L1_DEPOSIT_MANAGER_PROXY_ADDRESS}" ]]; then
  echo "Error: L1_DEPOSIT_MANAGER_PROXY_ADDRESS environment variable is not set"
  exit 1
fi
if [[ -z "${ERC20_TOKEN_ADDRESS}" ]]; then
  echo "Error: ERC20_TOKEN_ADDRESS environment variable is not set"
  exit 1
fi
if [[ -z "${FUNDER_PRIVATE_KEY}" ]]; then
  echo "Error: FUNDER_PRIVATE_KEY environment variable is not set"
  exit 1
fi
echo "L1_RPC_URL: ${L1_RPC_URL}"
export ETH_RPC_URL="${L1_RPC_URL}"
echo "L1_DEPOSIT_MANAGER_PROXY_ADDRESS: ${L1_DEPOSIT_MANAGER_PROXY_ADDRESS}"
echo "ERC20_TOKEN_ADDRESS: ${ERC20_TOKEN_ADDRESS}"
echo "FUNDER_PRIVATE_KEY: ${FUNDER_PRIVATE_KEY}"

# Define some parameters for the test.
erc20_token_amount_to_bridge=20

# Set up a new testing account.
echo
echo "Setting up a new test account..."
account=$(cast wallet new --json | jq '.[0]')
echo "${account}"
ADDRESS=$(echo "${account}" | jq --raw-output '.address')
PRIVATE_KEY=$(echo "${account}" | jq --raw-output '.private_key')

echo
echo "Funding the test account with ether..."
cast send --private-key "${FUNDER_PRIVATE_KEY}" --value 0.1ether "${ADDRESS}"

echo
echo "Funding the test account with some ERC20 tokens..."
cast send --private-key "${FUNDER_PRIVATE_KEY}" "${ERC20_TOKEN_ADDRESS}" "transfer(address,uint)" "${ADDRESS}" "${erc20_token_amount_to_bridge}"

echo
echo "Checking test account balances..."
echo "- ether: $(cast balance --ether "${ADDRESS}")"
echo "- matic token: $(cast call "${ERC20_TOKEN_ADDRESS}" "balanceOf(address)(uint)" "${ADDRESS}")"

# Deposit ERC20 to trigger a state sync.
echo
echo "✅ Approving the DepositManager contract to spend ERC20 tokens on our behalf..."
cast send --rpc-url "${L1_RPC_URL}" --private-key "${PRIVATE_KEY}" \
  "${ERC20_TOKEN_ADDRESS}" \
  "approve(address,uint)" "${L1_DEPOSIT_MANAGER_PROXY_ADDRESS}" "${erc20_token_amount_to_bridge}"

echo
echo "🚀 Depositing ERC20 to trigger a state sync..."
cast send --rpc-url "${L1_RPC_URL}" --private-key "${PRIVATE_KEY}" \
  "${L1_DEPOSIT_MANAGER_PROXY_ADDRESS}" \
  "depositERC20(address,uint)" "${ERC20_TOKEN_ADDRESS}" "${erc20_token_amount_to_bridge}"

echo
echo "Once the state sync has occured, check the account balance on L2 with this command..."
echo "cast balance --rpc-url <L2_RPC_URL> --ether ${ADDRESS}"
