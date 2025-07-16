participant = import_module("participant.star")
enums = import_module("../enums.star")


def test_new_participant(plan):
    test_cases = [
        (
            # Basic validator participant
            (
                enums.PARTICIPANT_KIND.validator,
                enums.EL_TYPE.bor,
                enums.CL_TYPE.heimdall,
                struct(service_name="bor-1", rpc_url="http://bor-1:8545"),
                struct(service_name="heimdall-1", api_url="http://heimdall-1:1317"),
            ),
            struct(
                kind=enums.PARTICIPANT_KIND.validator,
                el_type=enums.EL_TYPE.bor,
                cl_type=enums.CL_TYPE.heimdall,
                el_context=struct(service_name="bor-1", rpc_url="http://bor-1:8545"),
                cl_context=struct(
                    service_name="heimdall-1", api_url="http://heimdall-1:1317"
                ),
            ),
        ),
        (
            # RPC participant with erigon and heimdall_v2
            (
                enums.PARTICIPANT_KIND.rpc,
                enums.EL_TYPE.erigon,
                enums.CL_TYPE.heimdall_v2,
                struct(service_name="erigon-rpc", rpc_url="http://erigon-rpc:8545"),
                struct(
                    service_name="heimdall-v2-rpc",
                    api_url="http://heimdall-v2-rpc:1317",
                ),
            ),
            struct(
                kind=enums.PARTICIPANT_KIND.rpc,
                el_type=enums.EL_TYPE.erigon,
                cl_type=enums.CL_TYPE.heimdall_v2,
                el_context=struct(
                    service_name="erigon-rpc", rpc_url="http://erigon-rpc:8545"
                ),
                cl_context=struct(
                    service_name="heimdall-v2-rpc",
                    api_url="http://heimdall-v2-rpc:1317",
                ),
            ),
        ),
    ]
    for (kind, el_type, cl_type, el_context, cl_context), expected in test_cases:
        result = participant.new_participant(
            kind, el_type, cl_type, el_context, cl_context
        )
        expect.eq(result.kind, expected.kind)
        expect.eq(result.el_type, expected.el_type)
        expect.eq(result.cl_type, expected.cl_type)
        expect.eq(result.el_context.service_name, expected.el_context.service_name)
        expect.eq(result.cl_context.service_name, expected.cl_context.service_name)
