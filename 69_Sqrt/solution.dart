
class Solution {
  int mySqrt(int x) {
    if(x<2){return x;}
    else if(x<0||x>2147483647){return 0;}
    int l=1,h=x;
    while(l<=h){
      int mid=(l+h)~/2;
      if(mid*mid==x){return mid;}
      else if(mid*mid<x){l=mid+1;}
      else if(mid*mid>x){h=mid-1;}
    }
    return h;
  }
}

void  main() {
  Solution solution = Solution();
  print(solution.mySqrt(8));
}