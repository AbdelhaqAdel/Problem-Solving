// class Solution {
//   void merge(List<int> nums1, int m, List<int> nums2, int n) {
//     int i = 0, j = 0;
//     List<int> merged = [];
//     while (i < m && j < n) {
//       if (nums1[i] <= nums2[j] && nums1[i] > 0) {
//         merged.add(nums1[i++]);
//       } else if (nums2[j] > 0) {
//         merged.add(nums2[j++]);
//       }
//     }
//     //    print(i);       print(j);
//     // print(merged);

//     while (i < m) {
//       merged.add(nums1[i++]);
//       // print(merged);
//     }
//     while (j < n) {
//       merged.add(nums2[j++]);
//     }
//     print(merged);
//   }
// }
class Solution {
  void merge(List<int> nums1, int m, List<int> nums2, int n) {
    int p1 = m - 1;
    int p2 = n - 1;
    int p = m + n - 1;

    while (p1 >= 0 && p2 >= 0) {
      if (nums1[p1] > nums2[p2]) {
        nums1[p] = nums1[p1];
        p1--;
      } else {
        nums1[p] = nums2[p2];
        p2--;
      }
      p--;
    }

    // If nums2 has leftover elements
    while (p2 >= 0) {
      nums1[p] = nums2[p2];
      p2--;
      p--;
    }
  }
}

void main() {
  Solution solution = new Solution();
  solution.merge([1, 2, 3, 0, 0, 0], 3, [2, 5, 6], 3);
}
