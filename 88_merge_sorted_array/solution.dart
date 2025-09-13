class Solution {
  void merge(List<int> nums1, int m, List<int> nums2, int n) {
    int i = 0, j =0;
    List<int>merged = [];
    while(i<m && j<n){
      if(nums1[i]<=nums2[j]&&nums1[i]>0){
        merged.add(nums1[i++]); 
      }else if(nums2[j]>0){
        merged.add(nums2[j++]);
      }
    }
        //    print(i);       print(j);
        // print(merged);

    while (i < m) {
       merged.add(nums1[i++]);
    }
    while (j < n) {
      merged.add(nums2[j++]);}
        // print(merged);

  }
}

  void main(){
    Solution solution = new Solution();
    solution.merge([1,2,3,0,0,0],3,[2,5,6],3);
  }
