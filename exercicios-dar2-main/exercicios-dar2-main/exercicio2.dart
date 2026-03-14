import 'dart:io';

String lerTexto(String mensagem) {
  stdout.write(mensagem);
  return stdin.readLineSync()!.trim();
}

int lerInt(String mensagem) {
  return int.parse(lerTexto(mensagem));
}

double lerDouble(String mensagem) {
  return double.parse(lerTexto(mensagem).replaceAll(',', '.'));
}

bool lerBool(String mensagem) {
  while (true) {
    final valor = lerTexto(mensagem).toLowerCase();
    if (valor == 'true' || valor == 't' || valor == '1' || valor == 'sim' || valor == 's') {
      return true;
    }
    if (valor == 'false' || valor == 'f' || valor == '0' || valor == 'nao' || valor == 'n') {
      return false;
    }
    print('Valor invalido. Digite true/false, sim/nao, 1/0.');
  }
}

void exercicio1() {
  final a = lerDouble('Digite A: ');
  final b = lerDouble('Digite B: ');
  final c = lerDouble('Digite C: ');

  final soma = a + b;
  print('A soma entre A e B e: $soma');
  print(soma < c ? 'A soma e menor que C.' : 'A soma nao e menor que C.');
}

void exercicio2() {
  final numero = lerInt('Digite um numero inteiro: ');
  final parOuImpar = numero % 2 == 0 ? 'par' : 'impar';
  final sinal = numero >= 0 ? 'positivo' : 'negativo';

  print('O numero $numero e $parOuImpar e $sinal.');
}

void exercicio3() {
  final numero = lerInt('Digite um numero inteiro: ');
  print('Antecessor: ${numero - 1}');
  print('Sucessor: ${numero + 1}');
}

void exercicio4() {
  const salarioMinimo = 1412.0;
  final salarioUsuario = lerDouble('Digite o salario do usuario: R\$ ');

  final quantidade = salarioUsuario / salarioMinimo;
  print('O usuario ganha ${quantidade.toStringAsFixed(2)} salarios minimos.');
}

void exercicio5() {
  final valor = lerDouble('Digite um valor: ');
  final reajustado = valor * 1.05;
  print('Valor com reajuste de 5%: ${reajustado.toStringAsFixed(2)}');
}

void exercicio6() {
  final valor1 = lerBool('Digite o primeiro valor booleano: ');
  final valor2 = lerBool('Digite o segundo valor booleano: ');

  if (valor1 && valor2) {
    print('Ambos sao VERDADEIRO.');
  } else if (!valor1 && !valor2) {
    print('Ambos sao FALSO.');
  } else {
    print('Um e VERDADEIRO e o outro e FALSO.');
  }
}

void exercicio7() {
  final numeros = <int>[
    lerInt('Digite o primeiro valor inteiro: '),
    lerInt('Digite o segundo valor inteiro: '),
    lerInt('Digite o terceiro valor inteiro: '),
  ];

  numeros.sort((a, b) => b.compareTo(a));
  print('Ordem decrescente: ${numeros.join(', ')}');
}

void exercicio8() {
  final peso = lerDouble('Digite o peso (kg): ');
  final altura = lerDouble('Digite a altura (m): ');
  final imc = peso / (altura * altura);

  String classificacao;
  if (imc < 18.5) {
    classificacao = 'Abaixo do peso';
  } else if (imc <= 24.9) {
    classificacao = 'Peso ideal (parabens)';
  } else if (imc <= 29.9) {
    classificacao = 'Levemente acima do peso';
  } else if (imc <= 34.9) {
    classificacao = 'Obesidade grau I';
  } else if (imc <= 39.9) {
    classificacao = 'Obesidade grau II (severa)';
  } else {
    classificacao = 'Obesidade grau III (morbida)';
  }

  print('IMC: ${imc.toStringAsFixed(2)}');
  print('Classificacao: $classificacao');
}

void exercicio9() {
  final n1 = lerDouble('Digite a primeira nota: ');
  final n2 = lerDouble('Digite a segunda nota: ');
  final n3 = lerDouble('Digite a terceira nota: ');

  final media = (n1 + n2 + n3) / 3;
  print('Media: ${media.toStringAsFixed(2)}');
}

void exercicio10() {
  final nome = lerTexto('Digite o nome do aluno: ');
  final n1 = lerDouble('Digite a primeira nota: ');
  final n2 = lerDouble('Digite a segunda nota: ');
  final n3 = lerDouble('Digite a terceira nota: ');
  final n4 = lerDouble('Digite a quarta nota: ');

  final media = (n1 + n2 + n3 + n4) / 4;
  final situacao = media >= 7 ? 'APROVADO' : 'REPROVADO';

  print('Aluno: $nome');
  print('Media final: ${media.toStringAsFixed(2)}');
  print('Situacao: $situacao');
}

void mostrarMenu() {
  print('\n=== Lista de Exercicios ===');
  print('1 - Soma A + B e comparar com C');
  print('2 - Par/impar e positivo/negativo');
  print('3 - Antecessor e sucessor');
  print('4 - Quantos salarios minimos ganha');
  print('5 - Reajuste de 5%');
  print('6 - Comparar dois valores booleanos');
  print('7 - Tres valores em ordem decrescente');
  print('8 - Calculo de IMC');
  print('9 - Media de 3 notas');
  print('10 - Media de 4 notas e situacao do aluno');
  print('0 - Sair');
}

void main() {
  while (true) {
    mostrarMenu();
    final opcao = lerInt('Escolha uma opcao: ');
    print('');

    switch (opcao) {
      case 1:
        exercicio1();
        break;
      case 2:
        exercicio2();
        break;
      case 3:
        exercicio3();
        break;
      case 4:
        exercicio4();
        break;
      case 5:
        exercicio5();
        break;
      case 6:
        exercicio6();
        break;
      case 7:
        exercicio7();
        break;
      case 8:
        exercicio8();
        break;
      case 9:
        exercicio9();
        break;
      case 10:
        exercicio10();
        break;
      case 0:
        print('Encerrando...');
        return;
      default:
        print('Opcao invalida.');
    }
  }
}
