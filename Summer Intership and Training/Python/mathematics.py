def add(*args):
    return sum(args)

def sub(*args):
    if len(args) < 2:
        raise ValueError("At least two arguments are required for subtraction.")
    result = args[0]
    for num in args[1:]:
        result -= num
    return result

def max_value(*args):
    return max(args)

def min_value(*args):
    return min(args)

def custom_sort(*args):
    return sorted(args)
