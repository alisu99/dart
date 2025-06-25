abstract class Conta {
  String titular;
  double _saldo;

  Conta(this.titular, this._saldo);

  void receber(double valor) {
    _saldo += valor;
    print("PIX recebido no valor de $valor.");
    printSaldo();
  }

  void enviar(double valor) {
    _saldo -= valor;
    print("PIX enviado no valor de $valor para ${titular.toUpperCase()}.");
    printSaldo();
  }

  void printSaldo() {
    print("O saldo de $titular é de R\$ $_saldo");
  }
}

class ContaCorrente extends Conta {
  ContaCorrente(super.titular, super._saldo);
}

class ContaPoupanca extends Conta {
  ContaPoupanca(super.titular, super._saldo);
}

class ContaSalario extends Conta {
  ContaSalario(
    super.titular,
    super._saldo,
    this.cnpj_empresa,
    this.nome_empresa,
  );

  String cnpj_empresa;
  String nome_empresa;

  void DepositarSalario(double valor) {
    receber(valor);
    print(
      "O salário da empresa $nome_empresa, de CNPJ $cnpj_empresa no valor de R\$$valor foi depositado!",
    );
  }
}

mixin Imposto {
  double taxa = 0.3;

  double valorTaxado(double valor) {
    return valor * taxa;
  }
}

class ContaEmpresa extends Conta with Imposto {
  ContaEmpresa(super.titular, super._saldo);

  @override
  void enviar(double valor) {
    if (_saldo >= valor + valorTaxado(valor)) {
      _saldo -= valor + valorTaxado(valor);
      printSaldo();
    }
  }

  @override
  void receber(double valor) {
    _saldo += valor - valorTaxado(valor);
    printSaldo();
  }
}

class ContaInvestimento extends Conta with Imposto {
  ContaInvestimento(super.titular, super._saldo);

  @override
  void enviar(double valor) {
    if (_saldo >= valor + valorTaxado(valor)) {
      _saldo -= valor + valorTaxado(valor);
      printSaldo();
    }
  }

  @override
  void receber(double valor) {
    _saldo -= valor + valorTaxado(valor);
    printSaldo();
  }
}

// class Cliente {
//   String nome;
//   List<int> _quartos_reservados = <int>[];

//   Cliente(this.nome, this._quartos_reservados);

//   void reservarQuarto(int quarto) {
//     if (_quartos_reservados.contains(quarto)) {
//       print("O quarto $quarto já está reservado para ${nome.toUpperCase()}");
//     } else {
//       _quartos_reservados.add(quarto);
//       print('Quarto $quarto reservado para ${nome.toUpperCase()} com sucesso!');
//       quartosReservados();
//     }
//   }

//   void quartosReservados() {
//     print('Os quartos reservados para ${nome.toUpperCase()} são: ${_quartos_reservados.join(', ')}');
//     print('-----------------------------------------------------------------------');
//   }

//   void cancelarReserva(int quarto) {
//     if (!_quartos_reservados.contains(quarto)) {
//       print('O quarto $quarto NÃO está reservado para $nome');
//     } else {
//         _quartos_reservados.remove(quarto);
//         print('Reserva do quarto $quarto para ${nome.toUpperCase()} cancelada com sucesso!');
//         quartosReservados();
//     }
//   }
// }

// class Receita {
//   String nome;
//   double preco;

//   Receita(this.nome, this.preco);
// }

// Receita macarrao = Receita("Macarrão ao pesto", 20.0);
// Receita lasanha = Receita("Lasanha 4 queijos", 32.0);
// Receita batata = Receita("Burrata com pesto", 28.0);

// List<Receita> receitas = [batata, lasanha, macarrao];

// void main() {
//   for (var itens in receitas) {
//     print("${itens.nome} - ${itens.preco}");
//   }
// }

// =============================================================

// class Estoque {
//   String item;
//   int quantidade;

//   Estoque(this.item, this.quantidade);
// }

// Estoque smartphone = Estoque("Smartphone", 15);
// Estoque notebook = Estoque("Notebook", 28);

// List<Estoque> produtos = [smartphone, notebook];

// void main() {
//   for (var item in produtos) {
//     print("Produto: ${item.item} - Quantidade: ${item.quantidade}");
//   }
// }
