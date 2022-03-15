void main() {
  List<int> nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  int soma = 0;

  for (int i = 0; i < nums.length; i++) {
    soma += nums[i];
  }

  print(soma);
}
