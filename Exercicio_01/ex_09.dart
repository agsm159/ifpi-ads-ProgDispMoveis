void main() {
  void exemplo1() {
    var a; //null
    //Quando se inicia uma variavel, ela é inicializada com o valor nulo caso não seja passado um valor.

    print(a);
  }

  void exemplo2() {
    var b; //null

    var ex1 = b ?? "O valor passado é nulo";
    /*Uma maneira de trabalhar com valores nulos é usando-se o operador "??". No qual o primeiro valor
    será veficado se ele é nulo e caso ele de fato seja, sera retornado o outro valor */
    print(ex1);
  }

  void exemplo3() {
    var c;
    String ex2 = 'A variavel c é nula';
    /* Outra maneira de se trabalhar com vareaveis nulas é usando o operador "??=". Sendo nesse caso 
    diferente do operador "??" pelo fato dele atribuir um valor caso a primeira variavel seja nula. */

    print(c ??= ex2);
  }

  void exemplo4() {
    List<String> vogais = ['a', 'e', 'i', 'o', 'u'];
    List<int> pares = [2, 4, 6, 8, 10];

    final juntandoTudo = [...vogais, ...pares];
    print(juntandoTudo);

    /*Há também o operador "..." e "...?" para se trabalhar com valores nulos, de modo que, com operador
    "..." é possivel juntar os valores de uma lista junto ao de outra e usando-se do operado "...?" podemos
    realizar a verificação de uma expressão caso seja nula. */
  }

  void exemplo5() { //Testando o operador "...?"
    List<int> impares = [1, 3, 5, 7, 9];
    List<int> pares;

    final numeros = [0, ...impares, ...?pares];
    print(numeros);
  }

  exemplo1();
  exemplo2();
  exemplo3();
  exemplo4();
  exemplo5();
}
