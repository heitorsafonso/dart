void main() {
  String nome = "Laranja";
  double peso = 10.4;
  String cor = "Verde e laranja";
  String sabor = "Doce e cítrica";
  int diasDesdeColheita = 25;
  bool isMadura;
  //CLASSES servem para modularizar problemas complexos
  Fruta fruta01 = Fruta(nome, peso, cor, sabor, diasDesdeColheita);
  Fruta fruta02 = Fruta("Uva", 40, "Roxa", "Doce", 20);

  print(fruta01.nome);
  print(fruta02.peso);

  fruta02.estaMadura(15);
  fruta01.estaMadura(45);

  print(fruta01.estaMadura(50));
}

//Sempre começar com letras maiusculas
//Propriedades da Classes são onde vamos registras as caracteristicas
class Fruta {
  String nome;
  double peso;
  String cor;
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(this.nome, this.peso, this.cor, this.sabor, this.diasDesdeColheita,
      {this.isMadura});

  estaMadura(int diasParaMadura) {
    isMadura = diasDesdeColheita >= diasParaMadura;
    print(
        "A sua $nome foi colhida a $diasDesdeColheita dias, e precisa de $diasParaMadura para poder comer.. Ela está madura? $isMadura");
  }
}
