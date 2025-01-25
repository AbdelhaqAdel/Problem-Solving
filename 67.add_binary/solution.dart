class Solution {
  //----------BEST SOLUTION---------------------
// String addBinary(String a, String b) {
  // String result = '';
  // int carry = 0;
  // int i = a.length - 1;
  // int j = b.length - 1;
  // while (i >= 0 || j >= 0 || carry > 0) {
  //   int bitA = i >= 0 ? a[i].codeUnitAt(0) - '0'.codeUnitAt(0) : 0;
  //   int bitB = j >= 0 ? b[j].codeUnitAt(0) - '0'.codeUnitAt(0) : 0;
  //   int sum = bitA + bitB + carry;
  //   result = (sum % 2).toString() + result;
  //   carry = sum ~/ 2;
  //   i--;
  //   j--;
  // }

  // return result;
// }
String addBinary(String a, String b) {


    if(a.length < b.length){
     a= addZeroes(a,b);
    }else if(a.length > b.length){
      b= addZeroes(b,a);
    }
      List<int> listA = a.split('').map((char) => int.parse(char)).toList();
  List<int> listB = b.split('').map((char) => int.parse(char)).toList();

    int carry=0;
    String result='';
    for (int i = a.length - 1; i >= 0; i--) {
      if(listA[i]+listB[i]+carry>=2){       
        if(listA[i]+listB[i]+carry==3){
          result='1'+result;
        }
        else if(listA[i]+listB[i]+carry==2){
          result='0'+result;          
        }
         carry =1;
      }else{
        result=(listA[i]+listB[i]+carry).toString()+result;
        carry=0;
      }
    }
    if(carry==1){
      result='1'+result;
    }
    return result;

}
 String addZeroes(String a, String b) {
      int length = b.length - a.length;

    for (int i = 0; i <length; i++) {
      a = '0' + a;
    }
    return a;
  }

}

void main() {
  Solution solution = Solution();
  String a = "100";
  String b = "110010";
  print(solution.addBinary(a, b));
}

