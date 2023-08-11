String cpf = "111444999";
List<int> numbers = cpf.split('').map((e) => int.parse(e)).toList();
List<int> listDigit = [];
int digitos = 0;

void main(List<String> args) {
  for (int i = 0; numbers.length >= 11; i++) {
    if (numbers.length == 9) {
      //LANCAR UM NOVO LAÇO FOR AQUI PARA MULPICAR TUDO
      //listDigit.add[i];
    }
  }
  print(numbers);
}
