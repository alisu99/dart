import 'dart:io';

// void main() {
//   int n1 = int.parse(stdin.readLineSync()!);
//   int n2 = int.parse(stdin.readLineSync()!);

//   int somas = n1 + n2;

//   // print('A soma dos valores acima é $soma');

//   void soma() {
//     print(n1 + n2);
//   }

//   soma();
// }

// ------------------------------------------------------

// exercícios

// calculando o dobro: Faça um programa simples que calcula o dobro de um número inserido no terminal.

// void main() {
//   print('Digite um número');
//   int numero = int.parse(stdin.readLineSync()!);

//   print('O dobro de $numero é ${numero * 2}');

//   print('Fim do programa');
// }

// ------------------------------------------------------

// Escreva um programa que calcula a idade média de três pessoas. O usuário deve ser capaz de inserir as três idades e, ao final, o programa exibe a média dos números.

// void main() {
//   print('Digite a primeira idade:');
//   int idade1 = int.parse(stdin.readLineSync()!);

//   print('Digite a segunda idade:');
//   int idade2 = int.parse(stdin.readLineSync()!);

//   print('Digite a terceira idade:');
//   int idade3 = int.parse(stdin.readLineSync()!);

//   print('A média de idade é ${idade1 + idade2 + idade3 / 3}');
// }

// ------------------------------------------------------

// Desenvolva um programa que exibe uma pequena “ficha” com informações suas, utilizando os conhecimentos do Dart! As informações da ficha são:

// Nome;
// CPF;
// Idade;
// Altura;
// Participo da comunidade?

// void main() {
//   print('Nome:');
//   String nome = stdin.readLineSync()!;

//   print('CPF');
//   String cpf = stdin.readLineSync()!;

//   print('Idade');
//   int idade = int.parse(stdin.readLineSync()!);

//   print('Altura');
//   double altura = double.parse(stdin.readLineSync()!);

//   print('Participa da comunidade?');
//   bool participa_comunidade = bool.parse(stdin.readLineSync()!);

//   print('Nome: $nome');
//   print('CPF: $cpf');
//   print('Idade: $idade');
//   print('Altura: $altura');
//   print('Participante da comunidade: $participa_comunidade');
// }

// ------------------------------------------------------

// void main() {
//   print('Digite sua idade');
//   int idade = int.parse(stdin.readLineSync()!);

//   if (idade < 18) {
//     print('Você estáproibido de dirigir veículos automotores! ');
//   }

//   else {
//     print('Você está apto a dirigir.');
//   }
// }

// ------------------------------------------------------

// void main() {
//   print('Digite um número referente a um mês');
//   String mes = stdin.readLineSync()!;

//   switch (mes) {
//     case "1":
//       print('O mês $mes é Janeiro.');
//     case "2":
//       print('O mês $mes é Fevereiro.');
//     case "3":
//       print('O mês $mes é Março.');
//     case "4":
//       print('O mês $mes é Abril.');
//     case "5":
//       print('O mês $mes é Maio.');
//     case "6":
//       print('O mês $mes é Junho.');
//     case "7":
//       print('O mês $mes é Julho.');
//     case "8":
//       print('O mês $mes é Agosto.');
//     case "9":
//       print('O mês $mes é Setembro.');
//     case "10":
//       print('O mês $mes é Outubro.');
//     case "11":
//       print('O mês $mes é Novembro.');
//     case "12":
//       print('O mês $mes é Dezembro.');
//   }
// }
