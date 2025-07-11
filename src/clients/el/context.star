def new_context(
    service_name,
    rpc_http_url,
    ws_url,
    metrics_url,
):
    return struct(
        service_name=service_name,
        rpc_http_url=rpc_http_url,
        ws_url=ws_url,
        metrics_url=metrics_url,
    )
