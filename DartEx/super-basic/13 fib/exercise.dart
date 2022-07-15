// --- Directions
// Print out the n-th entry in the fibonacci series.
// The fibonacci series is an ordering of numbers where
// each number is the sum of the preceeding two.
// For example, the sequence
//  [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
// forms the first ten entries of the fibonacci series.
// Example:
//   fib(4) === 3

int fib(int n) {
  if (n == 0) return 0;
  if (n == 1) return 1;
  return fib(n - 2) + fib(n - 1);
}

int fib2(int n) {
  int next = 1;
  int previous = 0;
  int count = 1, temp;
  if (n == 0) return previous;

  while (count < n) {
    temp = next;
    next = next + previous;
    previous = temp;
    count++;
  }
  return next;
}
