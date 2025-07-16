context = import_module("context.star")


def test_new_context(plan):
    test_cases = [
        (
            # Basic heimdall context
            (
                "heimdall-1",
                "http://heimdall-1:1317",
                "http://heimdall-1:26657",
                "http://heimdall-1:26660",
            ),
            struct(
                service_name="heimdall-1",
                api_url="http://heimdall-1:1317",
                rpc_url="http://heimdall-1:26657",
                metrics_url="http://heimdall-1:26660",
            ),
        ),
        (
            # Heimdall v2 context
            (
                "heimdall-v2-validator-1",
                "http://heimdall-v2-validator-1:1317",
                "http://heimdall-v2-validator-1:26657",
                "http://heimdall-v2-validator-1:26660",
            ),
            struct(
                service_name="heimdall-v2-validator-1",
                api_url="http://heimdall-v2-validator-1:1317",
                rpc_url="http://heimdall-v2-validator-1:26657",
                metrics_url="http://heimdall-v2-validator-1:26660",
            ),
        ),
        (
            # RPC node context
            (
                "heimdall-rpc",
                "http://heimdall-rpc:1317",
                "http://heimdall-rpc:26657",
                "http://heimdall-rpc:26660",
            ),
            struct(
                service_name="heimdall-rpc",
                api_url="http://heimdall-rpc:1317",
                rpc_url="http://heimdall-rpc:26657",
                metrics_url="http://heimdall-rpc:26660",
            ),
        ),
        (
            # Different port configuration
            (
                "custom-heimdall",
                "http://custom-heimdall:8080",
                "http://custom-heimdall:8081",
                "http://custom-heimdall:8082",
            ),
            struct(
                service_name="custom-heimdall",
                api_url="http://custom-heimdall:8080",
                rpc_url="http://custom-heimdall:8081",
                metrics_url="http://custom-heimdall:8082",
            ),
        ),
    ]
    for (service_name, api_url, rpc_url, metrics_url), expected in test_cases:
        result = context.new_context(service_name, api_url, rpc_url, metrics_url)
        expect.eq(result.service_name, expected.service_name)
        expect.eq(result.api_url, expected.api_url)
        expect.eq(result.rpc_url, expected.rpc_url)
        expect.eq(result.metrics_url, expected.metrics_url)
