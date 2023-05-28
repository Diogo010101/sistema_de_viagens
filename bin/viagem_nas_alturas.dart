import 'dart:io';

void main() {
  // TODO fazer funcionar a opção do usuário digitar a opção.
  /*print("Do que deseja viajar para sua aventura?\n"
      "Carro\n"
      "Bike\n"
      "Skate\n"
      "Aviao\n"
      "Andando\n"
      "Outros\n");
  String? inputEscolha = stdin.readLineSync();
  String escolha = inputEscolha.toString();
  escolha = escolha.toLowerCase();*/

  Set<String> registrosVisitados = <String>{};
  for (int i = 1; i <= 5; i++) {
    print("Digite o nome do ${i}º de 5 Destinos");
    String? inputDestino = stdin.readLineSync();
    String destino = inputDestino.toString();
    destino = destino.toUpperCase();

    registrarDestino(destino, registrosVisitados);
  }
  print("$registrosVisitados\n");

  escolherMeioTransposte(Transporte.carro);
}

Set<String> registrarDestino(String destino, Set<String> banco) {
  banco.add(destino);
  return banco;
}

void escolherMeioTransposte(Transporte locomocao) {
  switch (locomocao) {
    case Transporte.carro:
      print("Vou de CARRO para a aventura!");
      break;
    case Transporte.bike:
      print("Vou de BIKE para a aventura!");
      break;
    case Transporte.andando:
      print("Vou ANDANDO para a aventura!");
      break;
    case Transporte.skate:
      print("Vou de SKATE para a aventura!");
      break;
    case Transporte.aviao:
      print("Vou de AVIÃO para a aventura!");
      break;
    default:
      print("Vou para a aventura!");
  }
}

enum Transporte {
  carro,
  bike,
  andando,
  skate,
  aviao,
  trem,
  metro,
  navio,
}
