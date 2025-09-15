class Solution {

bool isAlphaNum(String c) {
  return RegExp(r'[a-zA-Z0-9]').hasMatch(c);
}

bool isPalindrome(String s) {
  int i = 0, j = s.length - 1;
  while (i < j) {
    while (i < j && !isAlphaNum(s[i])) i++;
    while (i < j && !isAlphaNum(s[j])) j--;
    if (s[i].toLowerCase() != s[j].toLowerCase()) return false;
    i++;
    j--;
  }
  return true;
}
}

  void main (){
    Solution s=new Solution();
    bool x= s.isPalindrome("ab_a");
    print(x);
  }