class Solution {
  int strStr(String haystack, String needle) {
    if (needle.isEmpty) return 0;

    for (int i = 0; i < haystack.length - needle.length + 1; i++) {
      if(needle[0]==haystack[i]){
        for (int j = 0; j < needle.length; j++) {  
          if(needle[j]!=haystack[i+j]){
            break;
          }else if(j==needle.length-1){
            return i;
          }
        }
      }

    }
    return -1;
  }
}

void main() {
  Solution solution = Solution();
  String haystack = "aa";
  String needle = "aa";

  print(solution.strStr(haystack, needle));
}