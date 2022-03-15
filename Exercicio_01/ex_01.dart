import 'dart:math';

void main() {
  int n1 = 15;
  int n2 = 10;

  var restoDivisao = n1 % n2;
  var divisaoInteira = n1 ~/ n2;
  var potenciacao = pow(n1, n2);
  var testaInterio = n1 is int;
  var testaNaoInterio = n1 is! int;

  print(restoDivisao);
  print(divisaoInteira);
  print(potenciacao);
  print(testaInterio);
  print(testaNaoInterio);
}
