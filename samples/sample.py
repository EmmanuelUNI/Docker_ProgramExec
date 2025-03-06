def nth_fibonacci(n):
    if n <= 1:
        return n
    return nth_fibonacci(n - 1) + nth_fibonacci(n - 2)

n = 40

result = nth_fibonacci(n)

print("testing from python")