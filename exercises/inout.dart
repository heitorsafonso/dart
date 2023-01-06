import 'dart:io';

void main() {
  // // print('Olá mundo!');
  // int idade = 22;
  // print("Minha idade é " + idade.toString() + ".");

  // //INTERPOLAÇÃO
  // print("Minha idade ano que vem será ${idade + 1}.");

  //BIBLIOTECA SÃO COMANDO PRONTOS
  print("Digite a sua idade:");
  String? input = stdin.readLineSync();
  if (input != null) {
    int idade = int.parse(input);
    print("Sua idade ano que vem será ${idade+1}");
  }
}
