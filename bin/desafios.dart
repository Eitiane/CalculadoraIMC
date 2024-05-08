import 'dart:io';

void main() {
  print('Qual é a sua altura?');
  String? inputAltura = stdin.readLineSync();
  if (inputAltura != null) {
    double altura = double.parse(inputAltura);
    double? valorIMC = funcIMC(altura);
    if (valorIMC != null) {
      print('Seu IMC é $valorIMC');
    } else {
      print('Não foi possível calcular seu IMC');
    }
  } else {
    print('Não foi possível calcular seu IMC');
  }
}

double? funcIMC(double altura) {
  print('Qual é o seu peso?');
  String? inputPeso = stdin.readLineSync();
  if (inputPeso != null) {
    double peso = double.parse(inputPeso);
    double IMC = peso / (altura * altura);
    return IMC;
  } else {
    print('Algo deu errado');
    return null;
  }
}
