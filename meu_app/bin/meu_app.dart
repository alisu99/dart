import 'dart:io';

void main() {
  print('Olá, digite seu nome abaixo:');
  var nome = stdin.readLineSync();
  print('Olá, $nome, Tudo bom? [S] sim [N] Não');

  var tudo_bom = stdin.readLineSync();

  if (tudo_bom == 'S') {
    print('Oba! que bom que está tudo bem com você!');
  } else if (tudo_bom == 'N') {
    print('Que pena!');
  } else {
    print('Não entendi o que você quis dizer!');
  }
}

