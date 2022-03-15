void main() {
  Carro carro = new Carro("ab12", 2022, "Sedan");
  print(carro._placa);
  print(carro._ano);
  print(carro._modelo);
}

class Veiculo {
  String _placa;
  int _ano;

  Veiculo(this._placa, this._ano) {}

  String get placaVeiculo => _placa;

  num get anoVeiculo => _ano;
}

class Carro extends Veiculo {
  String _modelo;

  Carro(String placa, int ano, this._modelo) : super(placa, ano) {}

  String get modeloCarro => _modelo;
}

class carroEletrico extends Carro {
  num _autonomiaBateria;

  carroEletrico(String placa, int ano, String modelo, this._autonomiaBateria)
      : super(placa, ano, modelo) {}

  num get autonomiaCarro => _autonomiaBateria;
}
