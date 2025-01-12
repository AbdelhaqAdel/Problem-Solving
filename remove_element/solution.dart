class Solution {
 static int removeElement(List<int> numbers, int val) {
    for(int i=0;i<numbers.length;i++){
      if(numbers[i]==val){
        numbers.removeAt(i);
      }
    }
    return numbers.length;
  }
}