void main() {
  double nota1 = 7;
  double nota2 = 8.5;
  double nota3 = 9.3;

  double media = (nota1 + nota2 + nota3) / 3;

  if (media >= 7) {
    print("Aprovado");
  } else if (media < 7 && media >= 4) {
    print("Recuperação");
  } else {
    print("Reprovado");
  }
}