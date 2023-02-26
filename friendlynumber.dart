void main() {
  int n = 1000;
  for (int i = 1; i <= n; i++) {
    int sumOfDivisorsI = sumOfDivisors(i);
    for (int j = i + 1; j <= n; j++) {
      int sumOfDivisorsJ = sumOfDivisors(j);
      if (sumOfDivisorsI == j && sumOfDivisorsJ == i) {
        print("$i and $j are friendly numbers");
      }
    }
  }
}

int sumOfDivisors(int n) {
  int sum = 1;
  for (int i = 2; i <= n ~/ 2; i++) {
    if (n % i == 0) {
      sum += i;
    }
  }
  return sum;
}
