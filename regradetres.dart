class RuleOfThree {
  static double calculate(double desconhecido, double group1, double group2) {
    return ((desconhecido * group1) / group2);
  }
}
//
// NÃO SEI PORQUE ESTA DANDO ERRO NO TESTE ABAIXO, PELO DART PAD ESTÁ OK....
//
main() {
  double quartoValor = RuleOfThree.calculate(10, 20, 30);
  print(quartoValor);
}
