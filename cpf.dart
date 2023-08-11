int List<int> primeirosNumeros(int n) {
String cpf = "123456789";
List<int> numbers = cpf.split('').map((e) => int.parse(e)).toList();

//for (int i = 1;length < 9,i++){
List<int> sequencia = [];

// for ({int i = 0;i = numbers;i++}) {
//   sequencia.add(cpf % 10);

//   cpf = cpf ~/ 10;

// }
//print(sequencia);

for (int i = numbers.length - 1; i >= 0; i--) {
  if (i == numbers.length - 1) {
    numbers[i] *= 2;
  } else {
    numbers[i] *= 3;
  }
}
}

void main(List<String> args) {
  print(numbers);
}
