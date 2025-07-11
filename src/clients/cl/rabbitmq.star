constants = import_module("../../constants/constants.star")

# Port identifiers and numbers.
RABBITMQ_AMQP_PORT_ID = "amqp"
RABBITMQ_AMQP_PORT_NUMBER = 5672


def launch(plan, name, image):
    if not name:
        fail("Name cannot be empty.")
    if not image:
        fail("Image cannot be empty.")

    service = plan.add_service(
        name=name,
        config=ServiceConfig(
            image=image,
            ports={
                RABBITMQ_AMQP_PORT_ID: PortSpec(
                    number=RABBITMQ_AMQP_PORT_NUMBER,
                    application_protocol="amqp",
                )
            },
        ),
    )
    return "amqp://{}:{}@{}:{}".format(
        constants.RABBITMQ_USERNAME,
        constants.RABBITMQ_PASSWORD,
        name,
        RABBITMQ_AMQP_PORT_NUMBER,
    )
