class Solution {
  List<int> plusOne(List<int> digits) {
    String sanitizedDigits = digits
    .toString()
    .replaceAll(RegExp(r'[,\[\]\s]'), '');
    final dynamic res ;
 if(sanitizedDigits.length<19) { 
  res = int.parse(sanitizedDigits) + 1;
  }
else{
 res = BigInt.parse(sanitizedDigits) + BigInt.one;
}
return res.toString().split('').map(int.parse).toList();

}}

void main() {
  Solution solution = Solution();
  List<int> digits =[7,2,8,5,0,9,1,2,9,5,3,6,6,7,3,2,8,4,3,7,9,5,7,7,4,7,4,9,4,7,0,1,1,1,7,4,0,0,6];
  print(solution.plusOne(digits));
}

//   List<int> plusOne(List<int> digits) {
//  final dynamic num;
//     if(digits.length<19){
//       num=int.parse(digits.toString().replaceAll(',', '').replaceAll(' ', '').replaceAll('[', '').replaceAll(']', ''))+1;

//     }else{
//       num=BigInt.parse(digits.toString().replaceAll(',', '').replaceAll(' ', '').replaceAll('[', '').replaceAll(']', ''))+ BigInt.one;
//     }
//  return num.toString().split('').map(int.parse).toList();


  // List<int> plusOne(List<int> digits) {
  //   int carry = 1;
  //   for (int i=digits.length-1; i >=0; --i) {
  //     print(i);
  //       carry += digits[i];
  //       digits[i] = carry % 10;
  //       carry ~/= 10;
  //   }
  //   if (carry > 0) digits = [1] + digits;
  //   return digits;
  // }

  //   List<int> plusOne(List<int> list) {
  // int len = list.length - 1;
  
  // for(int i = len; i>=0; i--){
  //   if(list[i]<9){
  //     list[i]++;
  //     return list;
  //   }
  //   list[i] = 0;
  // }
  // list.insert(0,1);
  
  // return list;
  // }