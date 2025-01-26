import 'dart:io';

class Solution {
  int climbStairs(int n) {
     if (n <= 1) return 1;

  int prev1 = 1, prev2 = 1; 
  for (int i = 2; i <= n; i++) {
    int current = prev1 + prev2; 
    prev2 = prev1;
    prev1 = current;
  }
  return prev1;
  }
}

  void main(){
    Solution solution = new Solution();
    int n=int.parse(stdin.readLineSync()!);
    print(solution.climbStairs(n));
  }