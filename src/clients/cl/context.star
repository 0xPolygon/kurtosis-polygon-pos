def new_context(
    service_name,
    api_url,
    rpc_url,
    metrics_url,
):
    return struct(
        service_name=service_name,
        api_url=api_url,
        rpc_url=rpc_url,
        metrics_url=metrics_url,
    )
