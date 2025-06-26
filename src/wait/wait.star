constants = import_module("../config/constants.star")


def wait_for_l1_startup(plan, cl_rpc_url):
    plan.run_sh(
        name="l1-startup-monitor",
        description="Wait for L1 to start up - it can take up to 5 minutes",
        env_vars={
            "CL_RPC_URL": cl_rpc_url,
        },
        run="\n".join(
            [
                "while true; do",
                "  sleep 5;",
                '  slot=$(curl --silent $CL_RPC_URL/eth/v1/beacon/headers/ | jq --raw-output ".data[0].header.message.slot");',
                '  echo "L1 Chain is starting up... Current slot: $slot";',
                '  if [[ "$slot" =~ ^[0-9]+$ ]] && [[ "$slot" -gt "0" ]]; then',
                '    echo "✅ L1 Chain has started!";',
                "    break;",
                "  fi;",
                "done",
            ]
        ),
        wait="5m",
    )


def wait_for_l2_startup(plan, cl_api_url, cl_type):
    # The url used to check if the L2 chain has started it the following:
    # curl --silent $CL_RPC_URL/$endpoint | jq -r '.[$key1][$key2]'
    # For example for heimdall (v1):
    # curl --silent $CL_RPC_URL/bor/latest-span | jq -r '.result.span_id'
    endpoint = ""
    key1 = ""
    key2 = ""
    if cl_type == constants.CL_TYPE.heimdall:
        endpoint = "bor/latest-span"
        key1 = "result"
        key2 = "span_id"
    elif cl_type == constants.CL_TYPE.heimdall_v2:
        endpoint = "bor/spans/latest"
        key1 = "span"
        key2 = "id"
    else:
        fail(
            'Wrong CL type: "{}". Allowed values: "{}."'.format(
                cl_type,
                [constants.CL_TYPE.heimdall, constants.CL_TYPE.heimdall_v2],
            )
        )

    plan.run_sh(
        name="l2-startup-monitor",
        description="Wait for L2 to start up - it can take up to 5 minutes",
        env_vars={
            "CL_RPC_URL": cl_api_url,
            "ENDPOINT": endpoint,
            "KEY1": key1,
            "KEY2": key2,
        },
        run="\n".join(
            [
                "while true; do",
                "  sleep 5;",
                '  span_id=$(curl --silent $CL_RPC_URL/$ENDPOINT | jq --arg k1 "$KEY1" --arg k2 "$KEY2" --raw-output \'.[$k1][$k2]\');',
                '  echo "L2 Chain is starting up... Current span id: $span_id";',
                '  if [[ "$span_id" =~ ^[0-9]+$ ]] && [[ "$span_id" -gt "0" ]]; then',
                '    echo "✅ L2 Chain has started!";',
                "    break;",
                "  fi;",
                "done",
            ]
        ),
        wait="5m",
    )
