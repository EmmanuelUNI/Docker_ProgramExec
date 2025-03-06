public class sample {
    static int nthFibonacci(int n) {
        if (n <= 1) {
            return n;
        }
        return nthFibonacci(n - 1) + nthFibonacci(n - 2);
    }

    public static void main(String[] args) {
        int n = 40;  // Número de Fibonacci a calcular
        nthFibonacci(n);
        System.out.print("testing from java");
    }
}