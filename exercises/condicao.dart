import 'dart:ffi';

void main(List<String> args) {
  int idade = 12; //comentário
  double altura = 1.78;
  bool geek = true;
  const String nome = 'Heitor Santos Afonso';
  final String apelido;
  apelido = 'Afonso';
  bool maiorDeIdade;
  int energia = 100;
  int cont1 = 0;
  int cont2 = 0;

  if (idade >= 18) {
    maiorDeIdade = true;
  } else {
    maiorDeIdade = false;
  }

  List<dynamic> dados = [idade, altura, geek, nome, apelido, maiorDeIdade];
  //List<String> familia = ['Kesia', 'Vera', 'Vicente', 'Hugo', 'Beatriz'];
  //TODO: Fazer outras Personas da equipe Mobile

  String frase = 'Eu sou ${dados[4]} \n'
      'mas meu nome completo é: ${dados[3]}, \n'
      'eu me considero geek? ${dados[2]}. \n'
      'Eu tenho ${dados[1]} metros de altura e \n'
      '${dados[0]} anos de idade, \n'
      'Eu sou maior de idade? $maiorDeIdade';

  print(frase);

  for (var i = 0; i < 5; i++) {
    print('Concluí $i voltas');
  }

  while (energia > 0) {
    print('Mais uma repetição');
    energia = energia - 6;
    cont1 = cont1 + 1;
  }
  print('Total de voltas = $cont1');

  do {
    print('Mais uma repetição');
    energia = energia - 6;
    cont2 = cont2 + 1;
  } while (energia > 0);
  print('Total de voltas = $cont2');

  /*
  identar no vscode = alt + shift + f
  comentar no vscode = ctrl + ; 
  comentar no vscode = ctrl + k e ctrl + c 
  tirar comentário = ctrl + k e ctrl + u
  */
}
