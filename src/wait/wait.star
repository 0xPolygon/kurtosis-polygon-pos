constants = import_module("../package_io/constants.star")


def wait_for_l1_startup(plan, l1_config_env_vars):
    plan.run_sh(
        name="wait-for-l1-startup",
        description="Wait for L1 to start up - it can take up to 2 minutes",
        env_vars=l1_config_env_vars,
        run="while true; do sleep 5; echo 'L1 Chain is starting up...'; if [ \"$(curl -s $CL_RPC_URL/eth/v1/beacon/headers/ | jq -r '.data[0].header.message.slot')\" != \"0\" ]; then echo 'L1 Chain has started!'; break; fi; done",
        wait="300s",
    )


def wait_for_l2_startup(plan, cl_api_url, cl_type):
    key = ""
    if cl_type == constants.CL_TYPE.heimdall:
        key = "result"
    elif cl_type == constants.CL_TYPE.heimdall_v2:
        key = "record"
    else:
        fail("Unable to retrieve the latest-span from bor")

    plan.run_sh(
        name="wait-for-l2-startup",
        description="Wait for L2 to start up - it can take up to 2 minutes",
        env_vars={
            "CL_RPC_URL": cl_api_url,
        },
        run="while true; do sleep 5; echo 'L2 Chain is starting up...'; if [ \"$(curl -s $CL_RPC_URL/bor/latest-span | jq -r '.{}.span_id')\" != \"0\" ]; then echo 'L2 Chain has started!'; break; fi; done".format(
            key
        ),
        wait="300s",
    )
