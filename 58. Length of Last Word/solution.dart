class Solution {
  int lengthOfLastWord(String s) {
    int count = 0;
    for (int i = s.length - 1; i >= 0; i--) {
      // if(s[i] == ' ') return s.length - i - 1;
      if(s[i]!=" ")count++;
      else if(count>0&&s[i]==" ") break;
    }
    return count;
  }
}

void main() { 
  Solution solution = Solution();   
  String s ="   fly me   to   the moon a ";
  print(solution.lengthOfLastWord(s));
  }