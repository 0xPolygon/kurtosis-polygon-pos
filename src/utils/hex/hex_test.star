hex = import_module("hex.star")


def test_int_to_hex(plan):
    test_cases = [
        (0, "0x0"),
        (1, "0x1"),
        (10, "0xa"),
        (15, "0xf"),
        (16, "0x10"),
        (255, "0xff"),
        (256, "0x100"),
        (4095, "0xfff"),
        (4096, "0x1000"),
        (65535, "0xffff"),
        (65536, "0x10000"),
        (1048575, "0xfffff"),
        (16777215, "0xffffff"),
        (268435455, "0xfffffff"),
        (4294967295, "0xffffffff"),
    ]
    for input_value, expected in test_cases:
        expect.eq(hex.int_to_hex(input_value), expected)


def test_normalize(plan):
    test_cases = [
        ("0x123", "0x123"),
        ("123", "0x123"),
        ("0xabc", "0xabc"),
        ("abc", "0xabc"),
        ("0x0", "0x0"),
        ("0", "0x0"),
        ("0xff", "0xff"),
        ("ff", "0xff"),
        ("0x1234567890abcdef", "0x1234567890abcdef"),
        ("1234567890abcdef", "0x1234567890abcdef"),
        ("0xABC", "0xABC"),
        ("ABC", "0xABC"),
    ]
    for input_value, expected in test_cases:
        expect.eq(hex.normalize(input_value), expected)
