import 'dart:io';

class RecursionExample {
  static void solve(){
    String? stringInput=stdin.readLineSync();
    int intInput=int.parse(stringInput!);
    factorial(intInput);

  }
   static   void factorial(int intInput) {
  if (intInput == 0 ) {
    return; 
  }
   print("I love Recursion");
  factorial(intInput - 1);  
}
}