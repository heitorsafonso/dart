void main() {
  String nome = 'Laranja';
  double peso = 100.2;
  String cor = "Verde e Amarela";
  String sabor = "Doce e cítrica";
  int diasDesdeColheita = 40;
  bool isMadura = funcEstaMadura(diasDesdeColheita);

  //print(isMadura);
  //print(funcEstaMadura(50));
  mostrarMadura("Uva", 20, peso: peso, cor: "Roxa" /*, sabor: sabor*/);
  int quantosDias = funcQuantosDiasMadura(diasDesdeColheita);
  print(quantosDias);
}

//Segue a ordem de parametros "Posicionais Obrigatorios", "Nomeados Opcionais", Parâmetros com "Padrão", Modificador "required"
mostrarMadura(String nome, int dias,
    {String? sabor, String? cor = "sem cor", required double peso}) {
  if (dias >= 30) {
    print("A $nome está madura");
  } else {
    print("A $nome não está madura");
  }

  print("A $nome é $cor");
  print("O peso da $nome é $peso");

  if (sabor != null) {
    print("O sabor da $nome é $sabor");
  }
}

funcQuantosDiasMadura(int dias) {
  int diasParaMadura = 30;
  int quantosDiasFaltam = diasParaMadura - dias;
  return quantosDiasFaltam;
}

bool funcEstaMadura(int dias) {
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}
