rabbitmq = import_module("rabbitmq.star")


def test_launch(plan):
    valid_test_cases = [
        (
            ("rabbitmq-test", "rabbitmq:4.1.2"),
            "amqp://guest:guest@rabbitmq-test:5672",
        ),
        (
            ("my-rabbitmq", "rabbitmq:3.12.0"),
            "amqp://guest:guest@my-rabbitmq:5672",
        ),
        (
            ("rabbitmq-service-1", "rabbitmq:latest"),
            "amqp://guest:guest@rabbitmq-service-1:5672",
        ),
        (
            ("test_rabbitmq", "custom/rabbitmq:v1.0.0"),
            "amqp://guest:guest@test_rabbitmq:5672",
        ),
    ]
    for (name, image), expected in valid_test_cases:
        result = rabbitmq.launch(plan, name, image)
        expect.eq(result, expected)

    invalid_test_cases = [
        ("", "rabbitmq:4.1.2", "Name cannot be empty"),
        ("rabbitmq-test", "", "Image cannot be empty"),
        (None, "rabbitmq:4.1.2", "Name cannot be empty"),
        ("rabbitmq-test", None, "Image cannot be empty"),
    ]
    for name, image, expected_error in invalid_test_cases:
        expect.fails(lambda: rabbitmq.launch(plan, name, image), expected_error)
