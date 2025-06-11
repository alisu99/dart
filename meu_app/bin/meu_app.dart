import 'dart:io';

// void main() {
//   print('Olá, digite seu nome abaixo:');
//   var nome = stdin.readLineSync();
//   print('Olá, $nome, Tudo bom? [S] sim [N] Não');

//   var tudo_bom = stdin.readLineSync();

//   if (tudo_bom == 'S') {
//     print('Oba! que bom que está tudo bem com você!');
//   } else if (tudo_bom == 'N') {
//     print('Que pena!');
//   } else {
//     print('Não entendi o que você quis dizer!');
//   }
// }


void main() {
  List<String> itens = ['Carro', 'Kotlin', 'Pêra', 'Louça', 'Pijama'];
  // for (var i in itens) {
  //   print(i);
  // }

  print('Verificar item na lista, digite um iem:');
  String item = stdin.readLineSync()!;

  if (itens.contains(item)) {
    print('O item $item está presente na lista.');
  } else {
    print('O item $item não está na lista.');
  }
}