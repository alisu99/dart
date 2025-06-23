import '../lib/conta.dart';

// Conta contamateus = Conta("Mateus", 2000);
// Conta contaroberta = Conta("Roberta", 5000);

// void main() {
//   contamateus.receber(200);
//   contamateus.enviar(350);
//   List<Conta> contas = [contamateus, contaroberta];

//   for (var conta in contas) {
//     conta.printSaldo();
//   }
// }


Cliente clienteAlisson = Cliente("Alisson", [9, 12, 6, 7]);
Cliente clienteAlice = Cliente("Alice", [8, 5, 11, 10]);
void main() {
  // clienteAlisson.reservarQuarto(9);
  // clienteAlisson.quartosReservados();
  // clienteAlice.quartosReservados();

  // clienteAlice.cancelarReserva(9);
  clienteAlice.reservarQuarto(8);
}
