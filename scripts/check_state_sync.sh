#!/usr/bin/env bash
set -euo pipefail

# Check that state syncs occur on Heimdall and Bor.
# Check that checkpoints occur on Bor and L1.
CHECK_RATE_SECONDS=${CHECK_RATE_SECONDS:-10}
TIMEOUT_SECONDS=${TIMEOUT_SECONDS:-180}

# Define a few environment variables required to run the script.
if [[ -z "${L2_CL_API_URL}" ]]; then
  echo "Error: CL_API_URL environment variable is not set."
  exit 1
fi
if [[ -z "${L2_CL_NODE_TYPE}" ]]; then
  echo "Error: L2_CL_NODE_TYPE environment variable is not set."
  exit 1
fi
if [[ "${L2_CL_NODE_TYPE}" != "heimdall" ]] && [[ "${L2_CL_NODE_TYPE}" != "heimdall-v2" ]]; then
  echo 'Error: L2_CL_NODE_TYPE must either be equal to "heimdall" or "heimdall-v2".'
  exit 1
fi
if [[ -z "${L2_RPC_URL}" ]]; then
  echo "Error: L2_RPC_URL environment variable is not set."
  exit 1
fi
if [[ -z "${L2_STATE_RECEIVER_ADDRESS}" ]]; then
  echo "Error: L2_STATE_RECEIVER_ADDRESS environment variable is not set."
  exit 1
fi
echo "Checking state syncs and checkpoints..."
echo "- Timeout: ${TIMEOUT_SECONDS} seconds"
echo "- Check rate: ${CHECK_RATE_SECONDS} seconds"
echo "- Environment variables:"
echo "L2_CL_API_URL: ${L2_CL_API_URL}"
echo "L2_CL_NODE_TYPE: ${L2_CL_NODE_TYPE}"
echo "L2_RPC_URL: ${L2_RPC_URL}"
echo "L2_STATE_RECEIVER_ADDRESS: ${L2_STATE_RECEIVER_ADDRESS}"
start_time="$(date +%s)"

# Monitor state syncs on Heimdall.
echo
echo "Monitoring state syncs on Heimdall..."
while true; do
  # Check for timeout.
  current_time="$(date +%s)"
  if ((current_time - start_time >= TIMEOUT_SECONDS)); then
    echo
    echo "Timeout reached. Exiting monitor."
    exit 1
  fi

  if [[ "${L2_CL_NODE_TYPE}" == "heimdall" ]]; then
    state_sync_count=$(curl --silent "${L2_CL_API_URL}/clerk/event-record/list" | jq '.result | length')
  elif [[ "${L2_CL_NODE_TYPE}" == "heimdall-v2" ]]; then
    state_sync_count=$(curl --silent "${L2_CL_API_URL}/clerk/event-record/list" | jq '.event_records | length')
  else
    echo 'Wrong L2 CL node type given: "${L2_CL_NODE_TYPE}"'
    exit 1
  fi

  if [[ "$state_sync_count" =~ ^[0-9]+$ ]] && [[ "$state_sync_count" -gt "0" ]]; then
    echo "✅ A state sync occured! State sync count: ${state_sync_count}"
    break
  else
    echo "No state sync occured yet... State sync count: ${state_sync_count}"
  fi

  echo "Waiting ${CHECK_RATE_SECONDS} seconds before next request..."
  sleep "${CHECK_RATE_SECONDS}"
done

# Monitoring state syncs on Bor.
echo
echo "Monitoring state syncs on Bor..."
while true; do
  # Check for timeout.
  current_time="$(date +%s)"
  if ((current_time - start_time >= TIMEOUT_SECONDS)); then
    echo
    echo "Timeout reached. Exiting monitor."
    exit 1
  fi

  latest_state_id=$(cast call --rpc-url "${L2_RPC_URL}" "${L2_STATE_RECEIVER_ADDRESS}" "lastStateId()(uint)")
  if [[ "$latest_state_id" =~ ^[0-9]+$ ]] && [[ "$latest_state_id" -gt "0" ]]; then
    echo "✅ A state sync was received! Latest state id: ${latest_state_id}"
    break
  else
    echo "No state sync received yet... Latest state id: ${latest_state_id}"
  fi

  echo "Waiting ${CHECK_RATE_SECONDS} seconds before next request..."
  sleep "${CHECK_RATE_SECONDS}"
done
