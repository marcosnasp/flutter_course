import 'dart:io';

int soma(a, b) => a + b;
int produto(a, b) => a * b;

Function operacao(Function f1, Function f2) {
  return (a, b, c) => f1(a, f2(b, c));
}

class Pessoa {
  var nome;
  var idade;
  var _cpf;

  Pessoa(this.nome, this.idade, this._cpf);

  @override
  String toString() { return this.nome + " " + this.idade.toString() + " " + this._cpf;  }
}

main() async {

  List<String> s = ["Ta", "Te", "Ti"];
  const List<int> t = [1,2,3,4,5,6,7,8,9,10];

  Pessoa p = Pessoa("Marcos", 33, "01098430379");
  p.nome = "Joao";
  p.idade = 60;
  p._cpf = "092823282893";

  print(p.toString());

  var fun_soma_prod = operacao(soma, produto);
  var fun_prod_soma = operacao(produto, soma);
  var fun_prod_prod = operacao(produto, produto);

  print("Soma Produto " + fun_soma_prod(2, 2, 2).toString());
  print("Produto Soma " + fun_prod_soma(2, 2, 2).toString());
  print("Produto Produto " + fun_prod_prod(2, 2, 2).toString());

  print("Soma Produto " + fun_soma_prod(3, 3, 3).toString());
  print("Produto Soma " + fun_prod_soma(3, 3, 3).toString());
  print("Produto Produto " + fun_prod_prod(3, 3, 3).toString());

  /*s.forEach((f) {
    print(f);
  });
  
  for(final sa in s) {
    print('$sa');
  }*/
  
  //t.retainWhere((f) => (f % 2 == 0));
  List<int> f = t.map((f) => f * f)
      .toList()
      .map((t) => t * t)
      .toList()
      .map((c) => c * c)
      .toList();
  f.sort((a, b) => b.compareTo(a));

  f.forEach((x) { print(x);});

  print(f.reduce((a, b) => a + b));

}