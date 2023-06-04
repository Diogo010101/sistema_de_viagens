import 'enum_transporte.dart';

class Viagem {
  static String codigoViajem = "AS15841";
  double dinheiro = 100.00;
  Transporte locomocao;
  Set<String> registrosVisitados = <String>{};
  Map<String, dynamic> registrarPrecos = {};

  Viagem({required this.locomocao});

//Printa o código de viagem apenas com a CLASSE Viagem, sem a instância
  void mostrarCodigoVijem() {
    print(codigoViajem);
  }

//Método para selecionar os meios de locomoção.
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

//Médito para o SET rigistroVisitados
  void visitar(String localVisita) {
    registrosVisitados.add(localVisita);
  }

//método para o MAP risgistrar peços
  void registarPrecoVisita(String local, dynamic preco) {
     registrarPrecos[local] = preco;
  }
}

