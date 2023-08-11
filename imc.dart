main() {
  double peso = 95;
  double altura = 1.65;
  fatCalc(peso: peso, altura: altura);
  print('imc =');
  print(fatCalc(peso: peso, altura: altura));

  if (fatCalc(peso: peso, altura: altura) >= 40) {
    print('OBESIDADE GRAVE - NIVEL III');
  } else if (fatCalc(peso: peso, altura: altura) <= 39.90 &&
      fatCalc(peso: peso, altura: altura) >= 30) {
    print('OBESIDADE - NIVEL II');
  } else if (fatCalc(peso: peso, altura: altura) <= 29.90 &&
      fatCalc(peso: peso, altura: altura) >= 25) {
    print('SOBREPESO - NIVEL I');
  } else if (fatCalc(peso: peso, altura: altura) <= 25.00 &&
      fatCalc(peso: peso, altura: altura) >= 18.50) {
    print('NORMAL');
  } else if (fatCalc(peso: peso, altura: altura) < 18.50) {
    print('MAGREZA');
  }
}

double fatCalc({required double peso, required double altura}) {
  double fat = peso / (altura * altura);
  return fat;
}

// String isFat(result) {
//   double peso = 69.00;
//   double altura = 1.65;
//   double fat = peso / (altura * altura);

//   if (fat >= 40) {
//     return (result = 'OBESIDADE GRAVE - NIVEL III');
//   } else if (fat <= 39.90 && fat >= 30) {
//     return (result = 'OBESIDADE - NIVEL II');
//   } else if (fat <= 29.90 && fat >= 25) {
//     return (result = 'SOBREPESO - NIVEL I');
//   } else if (fat <= 25.00 && fat >= 18.50) {
//     return (result = 'NORMAL');
//   } else if (fat < 18.50) {
//     return (result = 'MAGREZA');
//   }
//   //throw '';
// }
