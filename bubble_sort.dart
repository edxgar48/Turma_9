void bubbleSort(List<int> lista) {
  int tamanho = lista.length;
  for (int i = 0; i < tamanho - 1; i++) {
    for (int j = 0; j < tamanho - i - 1; j++) {
      if (lista[j] > lista[j + 1]) {
        // Troca os elementos
        int temp = lista[j];
        lista[j] = lista[j + 1];
        lista[j + 1] = temp;
      }
    }
  }
}

void main() {
  List<int> numeros = [
    64,
    34,
    25,
    12,
    22,
    11,
    90,
    300,
    23,
    51,
    122,
    98,
    99,
    00
  ];

  print("Lista original: ${numeros}");

  bubbleSort(numeros);

  print("Lista ordenada: ${numeros}");
}
