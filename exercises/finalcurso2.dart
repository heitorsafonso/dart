import 'dart:ffi';

void main() {
  String nome = "Laranja";
  double peso = 10.4;
  String cor = "Verde e laranja";
  String sabor = "Doce e cítrica";
  int diasDesdeColheita = 25;
  bool isMadura;

  if (diasDesdeColheita >= 30) {
    isMadura = true;
  } else {
    isMadura = false;
  }

  Legumes mandioca1 = Legumes('Macaxeira', 1200, 'Marrom', true);
  Fruta banana1 = Fruta('Banana', 75, 'Amarela', 'Doce', 12);
  Nozes macadamia1 = Nozes('Macadâmia', 2, 'Branco Amarelado', 'Doce', 20, 35);
  Citricas limao1 = Citricas('Limão', 100, 'Verde', 'Azedo', 5, 9);

  macadamia1.printAlimento();
  banana1.printAlimento();
  mandioca1.printAlimento();
  limao1.printAlimento();

  mandioca1.cozinhar();
  //limao1.cozinhar(); // não funciona
  //mandioca1.fazerSuco(); // não funciona
  limao1.fazerSuco();

  banana1.separarIngredientes();
  macadamia1.fazerMassa();
}

class Alimento {
  String nome;
  double peso;
  String cor;
  Alimento(this.nome, this.peso, this.cor);

  void printAlimento() {
    print('Este(a) $nome pesa $peso e é $cor');
  }
}

class Fruta extends Alimento implements Bolo {
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(
      String nome, double peso, String cor, this.sabor, this.diasDesdeColheita,
      {this.isMadura})
      : super(nome, peso, cor);

  estaMadura(int diasParaMadura) {
    isMadura = diasDesdeColheita >= diasParaMadura;
    print(
        "A sua $nome foi colhida a $diasDesdeColheita dias, e precisa de $diasParaMadura para poder comer.. Ela está madura? $isMadura");
  }

  void fazerSuco() {
    print('Você fez um ótimo suco de $nome');
  }

  @override
  void assar() {
    print("Catar a $nome");
  }

  @override
  void fazerMassa() {
    print("Misturar a $nome com Farinha, açucar ovos ...");
  }

  @override
  void separarIngredientes() {
    print("Colocar no forno");
  }
}

class Legumes extends Alimento implements Bolo {
  bool isPrecisaCozinhar;

  Legumes(String nome, double peso, String cor, this.isPrecisaCozinhar)
      : super(nome, peso, cor);

  void cozinhar() {
    if (isPrecisaCozinhar) {
      print('Pronto, o $nome está cozinhando!');
    } else {
      print('Nem precisa cozinhar!');
    }
  }

  @override
  void assar() {
    // TODO: implement assar
  }

  @override
  void fazerMassa() {
    // TODO: implement fazerMassa
  }

  @override
  void separarIngredientes() {
    // TODO: implement separarIngredientes
  }
}

class Citricas extends Fruta {
  double niveldeAzedo;

  Citricas(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, this.niveldeAzedo)
      : super(nome, peso, cor, sabor, diasDesdeColheita);

  void existeRefri(bool existe) {
    if (existe) {
      print('Existe refrigerante de $nome');
    } else {
      print('Não existe refri de $nome');
    }
  }
}

class Nozes extends Fruta {
  double porcentagemOleoNatural;

  Nozes(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, this.porcentagemOleoNatural)
      : super(nome, peso, cor, sabor, diasDesdeColheita);

  @override
  void fazerMassa() {
    print("Tirar a casca");
    super.fazerMassa();
  }
}

abstract class Bolo {
  void separarIngredientes();

  void fazerMassa();

  void assar();
}
