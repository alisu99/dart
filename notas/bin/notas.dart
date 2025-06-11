import 'dart:io';

void main() {
  List<String> notas = [];
  getComando();
  addNota(notas);
  listarNotas(notas);
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
