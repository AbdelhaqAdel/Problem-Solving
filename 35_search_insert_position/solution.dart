
class Solution {
 int searchInsert(List<int> nums, int target) {
    int j=0;
    for(int i=0;i<nums.length;i++){
        if(target ==nums[i]){
            return i;
        }else if(target <nums[i]){
            return i;
        }
        j=i;
        
    }
      return j+1;
  //   for(int i =0;i<nums.length;i++){
  //     if(nums[i]==target){
  //       return i;
  //     }
  //   }
  //   for(int i =0;i<nums.length;i++){
  //     if(i<nums.length-1){
  //     if(target>nums[i]&&target<nums[i+1]){
  //       return i+1;
  //     }}
  //   }
  //  return target >nums[ nums.length-1]?nums.length:0;
  }
}

void main() {
  Solution solution = Solution();
  List<int> nums = [1,3,5,6];
  int target = 4;
  print(solution.searchInsert(nums, target));
}