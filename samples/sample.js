function Fibonacci(n) {
    if (n <= 1) return n;
    return Fibonacci(n - 1) + Fibonacci(n - 2);
}

const n = 40;
Fibonacci(n);
console.log('Testing from javascript');
