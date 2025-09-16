class Solution {

// using XOR -------
int singleNumber(List<int> nums) {
  int result = 0;
  for (int num in nums) {
    result ^= num;
  }
  return result;
}

//   int singleNumber(List<int> nums) {
//     bool isNumFound=false;
//     for(int i=0;i<nums.length;i++){
//        isNumFound=false;
//       for (int k = i+1; k < nums.length; k++) {
//         if(nums[k]==nums[i]){
//           // print("${nums[k]} ${nums[i]}");
//             isNumFound=true;
//             nums[k]=-1000;
//             break;
//         }
//       }
//                 //  print(nums);
//                 //  print("---$i");
//       if(isNumFound==false&&nums[i]!=-1000){
//         return nums[i];
//       }
//   }
//   // print("------");
//    return nums[0];
// }
}

 void main (){
    Solution s=new Solution();
    int x= s.singleNumber([3,2,1,5,1,2,3]);
    print(x);
  }