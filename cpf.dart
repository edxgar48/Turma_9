// Exercício - Validador de CPF
// O CPF tem dois dígitos verificadores que são os dois últimos números do CPF.
// - Cálculo do primeiro dígito verificar:
// 1. O primeiro passo é calcular o primeiro dígito verificador, e para isso, separamos os primeiros 9 dígitos do CPF (111.444.777) e multiplicamos cada um dos números, da direita para a esquerda por números crescentes a partir do número 2.
// 2. Multiplique cada dígito do CPF pelo respectivo número e somamos cada um dos resultados.
// 3. Divida o valor obtido por 11. Trabalharemos com o RESTO e não com o VALOR da divisão.
// 4. Se o resto da divisão for menor que 2, então o dígito é igual a 0 (Zero).
//  Se o resto da divisão for maior ou igual a 2, então o dígito verificador é igual a 11 menos o resto da divisão (11 - resto).
// O Resultado deve ser igual ao primeiro dígito verificador.
// - Cálculo do segundo dígito verificar:
// 1. Pegaremos os primeiros 10 dígitos do CPF (111.444.777-05) e multiplicamos cada um dos números, da direita para a esquerda por números crescentes a partir do número 2.
// 2. Com o resultado em mãos, siga os passos 2, 3 e 4 do cálculo do primeiro dígito.
// O Resultado deve ser igual ao segundo dígito verificador.

String cpf = "111444777"; //- 05
List<int> numbers = cpf.split('').map((e) => int.parse(e)).toList();

List<int> listDigit = [];
List<int> listDigit2 = [];
List<int> listMultiplicada = [];
void main(List<String> args) {
  // numbers.forEach((e) {
  for (int j = 10; j >= 2; j--) {
    // int digitos = (e);
    // digitos = e * j;
    listDigit.add(j);
    //print(j);
  }
  for (int i = 0; i <= (numbers.length - 1); i++) {
    listDigit2.add(numbers.elementAt(i));
  }
  for (int i = 0; i < listDigit2.length; i++) {
    int Multiplicador = listDigit[i] * listDigit2[i];
    listMultiplicada.add(Multiplicador);
  }
  final sum = listMultiplicada.reduce((a, b) => a + b);
  final int verify = sum % 11;
  if (verify == 10) {
    verify == 0;
  }
  print(sum);
  print(verify);
  print(listDigit2);
  print(listMultiplicada);
}

  // for (int i = 0; i < numbers.length; i++) {
  //   for (int j = 2; j <= 10; j++) {
  //     digitos = numbers.elementAt(i) * j;

  //     listDigit.add(digitos);
  //   }
  // }

  // print(listDigit);
  // //print(numbers);