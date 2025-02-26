class Solution {
 static int removeElement(List<int> numbers, int val) {
    for(int i=0;i<numbers.length;){
      if(numbers[i]==val){
        print(i);
          numbers.removeAt(i);
      }else{
      i++;
      }
    }

    return numbers.length;
  }
}