import 'dart:math';

void main() {
  print(potenc1(2, 5));
  print(potenc2(2, 5));
}

dynamic potenc1(a, b) {
  return pow(a, b);
}

dynamic potenc2(a, b) => pow(a, b);
