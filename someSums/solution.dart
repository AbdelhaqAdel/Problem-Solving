import 'dart:io';

class SomeSumSolution{
  static void getinputs(){
  stdout.write('Enter three numbers: ');
    String? input1 = stdin.readLineSync();
    String? input2 = stdin.readLineSync();
    String? input3 = stdin.readLineSync();
    int maxRange = int.parse(input1!);
    int from = int.parse(input2!);
    int to = int.parse(input3!);
    if(maxRange<=1000){
    int sum=0;
    for(int i=1;i<=maxRange;i++){
    // if( i>9 && i~/10 + i %10 >= from && i ~/ 10 + i% 10 <=to){ 
      if(sumDigits(i)>=from&&sumDigits(i)<=to){
      print('step 1 ::: $i');
      sum += i;
     }   
     }
     print(sum);
    }
    else{print('please enter valid number');}
  }
    
 static int sumDigits(int number) {
  int sum = 0;
    String numStr = number.toString();
  for (int i = 0; i < numStr.length; i++) {
    int digit = int.parse(numStr[i]);
    sum += digit;
  }
  return sum;
}

}