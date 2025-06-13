import 'dart:io';

void main() {
  List<String> notas = [];
  menu(notas);
}

String getComando() {
  print('Digite um comando: 1 - Adicionar nota, 2 - Listar notas, 3 - Sair');
  List<String> comandos = ["1", "2", "3"];
  String? entrada = "";

  entrada = stdin.readLineSync();

  if (entrada == null || !comandos.contains(entrada)) {
    print('Comando inválido');
    getComando();
  }
  return entrada!;
}

List<String> addNota(List<String> notas) {
  print('Digite uma nota');
  String? nota = "";
  nota = stdin.readLineSync();

  if (nota == null || nota.isEmpty) {
    print('Não é possível adicionar uma nota vazia!');
    addNota(notas);
  }

  notas.add(nota!);
  return notas;
}

void listarNotas(List<String> notas) {
  for (var i = 0; i < notas.length; i++) {
    print(notas[i]);
  }
}

void menu(List<String> notas) {
  print("");
  print("");
  String comando = getComando();

  switch (comando) {
    case "1":
    addNota(notas);
    menu(notas);
    case "2":
    listarNotas(notas);

    case "3":
    print('Até breve!');
  }
}

  
// void main() {
//   for (var i = 1; i < 6; i++) {
//     print(i);
//   }
// }

// void main() {
//   List<String> nomes = ["Ana", "João", "Alisson", "Patrícia", "Elvira"];
  
//   for (var i in nomes) {
//     print('Nome: $i');
//   }
// }