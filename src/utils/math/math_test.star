math = import_module("math.star")


def test_sum(plan):
    test_cases = [
        ([1, 2, 3, 4, 5], 15),
        ([], 0),
        ([42], 42),
        ([-1, -2, -3], -6),
        ([1, -2, 3, -4], -2),
        ([0, 0, 0], 0),
        ([1000000, 2000000], 3000000),
    ]
    for array, expected in test_cases:
        expect.eq(math.sum(array), expected)


def test_pow(plan):
    test_cases = [
        ((2, 3), 8),
        ((5, 0), 1),
        ((7, 1), 7),
        ((10, 10), 10000000000),
        ((0, 5), 0),
        ((1, 100), 1),
        ((-2, 3), -8),
        ((-3, 4), 81),
        ((2, 10), 1024),
    ]
    for (base, exponent), expected in test_cases:
        expect.eq(math.pow(base, exponent), expected)


def test_ether_to_wei(plan):
    test_cases = [
        (1, 1000000000000000000),
        (0, 0),
        (0.5, 500000000000000000),
        (2, 2000000000000000000),
        (0.001, 1000000000000000),
        (10, 10000000000000000000),
    ]
    for amount, expected in test_cases:
        expect.eq(math.ether_to_wei(amount), expected)
