void main() {
  
  var dataAtual = new DateTime.now();
  var dia = dataAtual.day;
  var mes = dataAtual.month;
  var ano = dataAtual.year;

  print("Data: ${dia}/${mes}/${ano}");
}
