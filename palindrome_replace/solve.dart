class PalindromeReplaceSolution {
  static String solve(String s) {
    String str=s;
    if(str.contains("?")){
     for(int i=0;i<s.length;i++){
       if(s[i]=="?"){
          str = str.replaceFirst("?", s[s.length - i-1 ], i);
       }
     } 
    }
    if(str==str.split("").reversed.join("")){
      return str;
    }
    return "-1";
  }
}
