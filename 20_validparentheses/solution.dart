
class ValidParentheses {
  bool isValid(String s) {
  List<String> stack = [];
  
  Map<String, String> brackets = {
    ')': '(',
    '}': '{',
    ']': '[',
  };

  for (int i = 0; i < s.length; i++) {
    String current = s[i];
    if (brackets.containsValue(current)) {
      stack.add(current);
    } 
    else if (brackets.containsKey(current)) {
      if (stack.isNotEmpty && stack.last == brackets[current]) {
        stack.removeLast(); 
      } else {
        return false;
      }
    }
  }
    return stack.isEmpty;
}

}