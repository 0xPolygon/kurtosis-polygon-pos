constants = import_module("./config/constants.star")


def new_participant(
    kind,
    el_type,
    cl_type,
    el_context,
    cl_context,
):
    return struct(
        kind=kind,
        el_type=el_type,
        cl_type=cl_type,
        el_context=el_context,
        cl_context=cl_context,
    )
