void main() {
  List<int> nums = [1, 2, 3, 4, 5];

  print(sum(nums));
  print(mult(nums));
}

int sum(List<int> nums) {
  int soma = 0;

  for (int i = 0; i < nums.length; i++) {
    soma += nums[i];
  }

  return soma;
}

int mult(List<int> nums) {
  int mult = 1;

  for (int i = 0; i < nums.length; i++) {
    mult *= nums[i];
  }

  return mult;
}
