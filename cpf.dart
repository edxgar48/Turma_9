void main(List<String> args) {
  String cpf = "111444999";
  List<int> numbers = cpf.split('').map((e) => int.parse(e)).toList();
  // --->>> SAIDA TEM QUE SER = 2,3,4,20,24,28,72,81,90

  for (int i = 0; i < numbers.length; i++) {
    List<int> listDigit = [];
//  --->>> TEM ERRO AQUI EM BAIXO <<<---

    for (int j = 2; j <= 10; j++) {
      int isDigit = numbers[i] * j;

      // --->>> POSSIVELMENTE ESTÁ AQUI EM BAIXO O ERRO
      listDigit.add(isDigit);
      print(listDigit);
    }
  }
}
//   ------ >>>>>>>   LÓGICA   <<<<<<---------
//
//  funcao logico ValidaCPF(inteiro num[]) {
//     inteiro i, j, soma, resto, dv1, dv2
//   }

    // Dígito verificador #1
    // soma = 0
    // j = 10

    // para (i = 0; i < 9; i++) {
    //   soma += num[i] * j
    //   j -= 1
    // }

    // resto = soma % 11

    // se (resto < 2) {
    //   dv1 = 0
    // }
    // senao {
    //   dv1 = 11 - resto
    // }

    // // Dígito verificador #2
    // soma = 0
    // j = 11

    // para (i = 0; i < 10; i++) {
    //   soma += (num[i]) * j
    //   j -= 1
    // }

    // resto = soma % 11

    // se (resto < 2) {
    //   dv2 = 0
    // }
    // senao {
    //   dv2 = 11 - resto
    // }

    // se ((num[9] == dv1) e (num[10] == dv2)) {
    //   retorne verdadeiro
    // }
    // senao {
    //   retorne falso