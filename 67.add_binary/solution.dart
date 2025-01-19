class Solution {
String addBinary(String a, String b) {
  String result = '';
  int carry = 0;
  int i = a.length - 1;
  int j = b.length - 1;

  while (i >= 0 || j >= 0 || carry > 0) {
    int bitA = i >= 0 ? a[i].codeUnitAt(0) - '0'.codeUnitAt(0) : 0;
    int bitB = j >= 0 ? b[j].codeUnitAt(0) - '0'.codeUnitAt(0) : 0;
    int sum = bitA + bitB + carry;
    result = (sum % 2).toString() + result;
    carry = sum ~/ 2;
    i--;
    j--;
  }

  return result;
}


    // if(a.length < b.length){
    //  a= addZeroes(a,b);
    // }else if(a.length > b.length){
    //   b= addZeroes(b,a);
    // }

    // int carry = 0;
    //   List<int> sum = [];
    // for (int i = a.length - 1; i >= 0; i--) {
    //   if(a[i]==1&&b[i]==1){
    //     carry = 1;
    //     sum.add(0);
    //   }else{
    //         sum.add(int.parse(a[i]) + int.parse(b[i]) + carry);
    //   }
     
      // else if(a[i]==0&&b[i]==0){
      //   carry = 0;
      //   sum.add(0);
      // }
      // else {
      //   carry = 0;
      //   sum.add(1);
      // }
      
      // sum.add(int.parse(a[i]) + int.parse(b[i]) + carry);
      // //  sum. = int.parse(a[i]) + int.parse(b[i]) + carry;        
      // carry = sum[i] ~/ 2;
      // sum = sum % 2;
    //}
    // print(sum);
    // return '';
  

//  String addZeroes(String a, String b) {
//     for (int i = 0; i < b.length - a.length; i++) {
//       a = '0' + a;
//     }
//     return a;
//   }
}

void main() {
  Solution solution = Solution();
  String a = "1010";
  String b = "1011";
  print(solution.addBinary(a, b));
}