import '../lib/conta.dart';

Conta contamateus = Conta("Mateus", 2000);
Conta contaroberta = Conta("Roberta", 5000);

void main() {
  contamateus.receber(200);
  contamateus.enviar(350);
  List<Conta> contas = [contamateus, contaroberta];

  for (var conta in contas) {
    print("${conta.titular} - ${conta._saldo}");
  }
}
