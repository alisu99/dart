import '../lib/conta.dart';

// ContaCorrente contathayna = ContaCorrente("Thayna", 5000);
// ContaPoupanca contapedro = ContaPoupanca("Pedro", 5000);

// void main() {
//   contamateus.receber(200);
//   contamateus.enviar(350);
  
//   contamateus.receber(123);

//   contathayna.enviar(11);
// }


// Cliente clienteAlisson = Cliente("Alisson", [9, 12, 6, 7]);
// Cliente clienteAlice = Cliente("Alice", [8, 5, 11, 10]);
// void main() {
//   // clienteAlisson.reservarQuarto(9);
//   // clienteAlisson.quartosReservados();
//   // clienteAlice.quartosReservados();

//   // clienteAlice.cancelarReserva(9);
//   clienteAlice.reservarQuarto(8);
// }

// class Funcionario {
//   String nome;
//   double salario;

//   Funcionario(this.nome, this.salario);

//   void trabalhar() {
//     print('O $nome está trabalhando...');
//   }
// }

// class Cozinheiro extends Funcionario {
//   Cozinheiro(super.nome, super.salario);

//   @override
//   void trabalhar() {
//     print("O $nome está coiznhando...");
//   }
// }

// class Garcom extends Funcionario {
//   Garcom(super.nome, super.salario);

//   @override
//   void trabalhar() {
//     print("O $nome está servindo os clientes...");
//   }
  
// }

// class Gerente extends Funcionario {
//   Gerente(super.nome, super.salario);

//   @override
//   void trabalhar() {
//     print("O $nome está gerenciando...");
//   }
  
// }

// void main() {
//   Garcom garcomAlisson = Garcom("Alisson", 2500);
//   Gerente gerenteAlisson = Gerente("Gustavo", 2500);
//   Cozinheiro cozinheiroAlisson = Cozinheiro("Alencar", 2500);

//   garcomAlisson.trabalhar();
//   gerenteAlisson.trabalhar();
//   cozinheiroAlisson.trabalhar();

// }


// abstract class Animal {
//   String especie;

//   Animal(this.especie);

//   void emitirsom() {
//     print('$especie etá emitindo um som...');
//   }
// }

// class Gato extends Animal {
//   String nome;

//   Gato(super.especie, this.nome);

//   @override
//   void emitirsom() {
//     print('$nome está miando...');
//   }

//   void aranharMoveis() {
//     print('$nome está a arranhar móveis, ora pois...');
//   }
// }

// class Cachorro extends Animal {
//   String nome;

//   Cachorro(super.especie, this.nome);

//   @override
//   void emitirsom() {
//     print('$nome está latindo...');
//   }

//     void abanarRabo() {
//     print('$nome está a abanar o rabinho...');
//   }
// }

// void main() {
//   Gato gatoPipoca = Gato('Vira lata', 'Pipoca');

//   gatoPipoca.emitirsom();
//   gatoPipoca.aranharMoveis();
// }

// // ContaSalario ContaSalarioCatarina = ContaSalario("Catarina", 2500, "07007635385555", "AGAS");

// // void main() {
// //   // ContaSalarioCatarina.receber(500);
// //   // ContaSalarioCatarina.enviar(900);

// //   ContaSalarioCatarina.DepositarSalario(2500);
// // }

abstract class Funcionario {
  String nomeFuncionario;
  double salarioBase = 3000;

  Funcionario(this.nomeFuncionario, this.salarioBase);
}

class Analista extends Funcionario {
  Analista(super.nome, super.salarioBase);
  void calcularSalario() {
    print('Salário do(a) Analista $nomeFuncionario: R\$ ${salarioBase += salarioBase * 1.2}');
  }
}

class Gerente extends Funcionario {
  Gerente(super.nome, super.salarioBase);
  void calcularSalario() {
    print('Salário do(a) Analista $nomeFuncionario: R\$ ${salarioBase += salarioBase * 1.5}');
  }
}
class Diretor extends Funcionario {
  Diretor(super.nome, super.salarioBase);

  void calcularSalario() {
    print('Salário do(a) Analista $nomeFuncionario: R\$ ${salarioBase += salarioBase * 2}');
  }
}

Analista analistaJoao = Analista("joão", 3000);

void main() {
  analistaJoao.calcularSalario();
}