
import 'dart:io';

class IsPalindromSolution{
  static void setNumberAndCheckIsPalindrome(){
    print('please enter number to check it');
    String num =stdin.readLineSync()!;
    // print();
    print(isPalindromNumber(num));
  } 
  static bool isPalindromNumber(String numberToCheck){
    //convert the string number each character in ''   EX: '1234' to '1','2','3','4',
    //and then reverse this numbers and convert it to string value   EX: '4321'
  String reversedNumStr = numberToCheck.split('').reversed.join('');
  return numberToCheck == reversedNumStr;
  } 
}



void main(){
   IsPalindromSolution.setNumberAndCheckIsPalindrome();
 
}