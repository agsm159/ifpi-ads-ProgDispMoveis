void main() {

  int salario = 1000;

  double reajuste1 = (salario * 0.07) + salario;
  double reajuste2 = (reajuste1 * 0.06) + reajuste1;
  double reajuste3 = (reajuste2 * 0.05) + reajuste2;

  print("Salario antes do reajuste: $salario");
  print('''Salario com reajuste apos 1 ano: ${reajuste1}
Salario com reajuste apos 2 anos: ${reajuste2}
Salario com reajuste apos 3 anos: ${reajuste3}''');
}
