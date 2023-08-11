List<int> fibonacci(int n) {
  List<int> sequencia = [];
  for (int i = 0; i < n; i++) {
    if (i == 0 || i == 1) {
      sequencia.add(i);
    } else {
      sequencia.add(sequencia[i - 1] + sequencia[i - 2]);
    }
  }
  return sequencia;
}

void main(List<String> args) {
  final int n = 9;
  print(fibonacci(n));
}
