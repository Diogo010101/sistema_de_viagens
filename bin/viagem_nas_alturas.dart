import 'dart:io';

void main() {
  Set<String> registrosVisitados = <String>{};
  registrosVisitados = registrarDestino("São Paulo", registrosVisitados);

  print("Destino selecionado: $registrosVisitados");
  escolherMeioTransposte(Transporte.carro);

  Map<int, dynamic> registrarPrecos = {};

  registrarPrecos[0] = {"São Paulo", 1200};
  registrarPrecos[1] = {"Rio de Janeiro", 1300};
  registrarPrecos[2] = {"Bahia",1500};
  registrarPrecos[3] = {"Pernambuco",1150};
  registrarPrecos[4] = {"Nova Iorque","Caro"};

  //apresentando com o forEach
  registrarPrecos.forEach((key, value) {
    print("testando o foreach $key $value");
  });

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
