import 'package:exercicios/exercicios.dart' as exercicios;

import 'dart:io';


void somaPares() {
  print("Digite um número N:");
  int n = int.parse(stdin.readLineSync()!);

  int soma = 0;
  for (int i = 1; i <= n; i++) {
    if (i % 2 == 0) {
      soma += i;
    }
  }

  print("Soma dos pares até $n: $soma");
}


void fatorial() {
  print("Digite um número:");
  int n = int.parse(stdin.readLineSync()!);

  int resultado = 1;
  for (int i = 1; i <= n; i++) {
    resultado *= i;
  }

  print("Fatorial de $n é: $resultado");
}


void verificarPrimo() {
  print("Digite um número:");
  int n = int.parse(stdin.readLineSync()!);

  bool primo = true;

  if (n <= 1) {
    primo = false;
  } else {
    for (int i = 2; i < n; i++) {
      if (n % i == 0) {
        primo = false;
        break;
      }
    }
  }

  if (primo) {
    print("$n é primo.");
  } else {
    print("$n não é primo.");
  }
}


void verificarPalindromo() {
  print("Digite uma palavra:");
  String palavra = stdin.readLineSync()!;

  String invertida = palavra.split('').reversed.join('');

  if (palavra == invertida) {
    print("É palíndromo.");
  } else {
    print("Não é palíndromo.");
  }
}

void converterTemperatura() {
  print("Digite a temperatura em Celsius:");
  double c = double.parse(stdin.readLineSync()!);

  double f = (c * 9 / 5) + 32;

  print("Temperatura em Fahrenheit: $f");
}


void calcularIMC() {
  print("Digite seu peso (kg):");
  double peso = double.parse(stdin.readLineSync()!);

  print("Digite sua altura (m):");
  double altura = double.parse(stdin.readLineSync()!);

  double imc = peso / (altura * altura);

  print("Seu IMC é: ${imc.toStringAsFixed(2)}");
}

void tabuada() {
  print("Digite um número:");
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= 10; i++) {
    print("$n x $i = ${n * i}");
  }
}


void main() {

  //somaPares();
  // fatorial();
  // verificarPrimo();
  // verificarPalindromo();
  // converterTemperatura();
  // calcularIMC();
  // tabuada();
}
