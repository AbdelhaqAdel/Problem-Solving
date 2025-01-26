import 'dart:io';

class FibonacciExample {
   static int solve(int n){
    if(n==1||n==2){
      return n;
    }
    return solve(n-1)+solve(n-2);
  }

  //  static int climbStairs(int n) {
  //    if (n <= 1) return 1;

  // int prev1 = 1, prev2 = 1; // Base cases: ways(0) = 1, ways(1) = 1
  // for (int i = 2; i <= n; i++) {
  //   int current = prev1 + prev2; // Recurrence relation
  //   prev2 = prev1; // Update for the next iteration
  //   prev1 = current;
  // }
  // return prev1;
  // }
}

  void main(){
    int n=int.parse(stdin.readLineSync()!);
    print(FibonacciExample.solve(n));
  }