void main() {
  List<int> nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  int mult = 1;

  for (int i = 0; i < nums.length; i++) {
    mult *= nums[i];
  }

  print(mult);
}
