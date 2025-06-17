class Conta {
  String titular;
  double _saldo;

  Conta(this.titular, this._saldo);

  receber(valor) {
    _saldo += valor;
    print("PIX recebido no valor de $valor.");
  }

  enviar(valor) {
    _saldo -= valor;
    print("PIX enviado no valor de $valor para ${titular.toUpperCase()}.");
  }
}

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
