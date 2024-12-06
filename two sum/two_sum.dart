//this class to get list from user and serch for two index that thier value summetion equal the target number
//that the user enter it 
import 'dart:io';

class TwoSumSolution {
  //Getting the list 
  static void convertStringListToIntList(){
    print('please enter your list of numbers ');
    String? input = stdin.readLineSync();
    List<String> strList=input!.split(' ');
    List<int>intList=strList.map(int.parse).toList();
    getTargetToSearch(intList);
   
  }
   static List<int> twoSum(List<int> nums, int target) {
    for(int i=0;i<nums.length;i++){
      if(i+1<nums.length&&nums[i]+nums[i+1]==target){
         List<int>twoNums=[i,i+1];
         return twoNums;
       }
    }
    return [];
   }


  static void getTargetToSearch(List<int>intNums){
   print('please enter your target number');
    int target=int.parse(stdin.readLineSync()!);
   print(twoSum(intNums,target));
}
}

