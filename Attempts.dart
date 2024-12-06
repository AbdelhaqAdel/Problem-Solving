  bool isValid1(String s) {
    int l=s.length;
    print(l);
    // List<String>validList=["{","}","[","]","(",")"];
    if(l>0&&l.isEven){
    for(int i=0;i<l/2;i++){
      print(s[i]);
      print(s[l-i-1]);
       if(s[i] != s[l-i-1]){
        print('valid input');
        return false;
       }
       print(i);
    }
    print('valid input true');
    return true;
    }else{
      print('invalid input');
      return false;
    }
  }

    bool isValid2(String s) {
  // Stack to hold opening brackets
  List<String> stack = [];
  
  // Map to match closing brackets with opening brackets
  Map<String, String> brackets = {
    ')': '(',
    '}': '{',
    ']': '[',
  };

  // Iterate through each character in the string
  for (int i = 0; i < s.length; i++) {
    String current = s[i];

    // If it's an opening bracket, push to the stack
    if (brackets.containsValue(current)) {
      stack.add(current);
    } 
    // If it's a closing bracket
    else if (brackets.containsKey(current)) {
      // Check if the stack is not empty and the top matches
      if (stack.isNotEmpty && stack.last == brackets[current]) {
        stack.removeLast(); // Pop the last opening bracket
      } else {
        return false; // Not matching
      }
    }
  }
    return stack.isEmpty;
}

