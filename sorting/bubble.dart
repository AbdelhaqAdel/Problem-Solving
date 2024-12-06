import 'dart:io';

class BubbleSort {
  // Bubble sort ********  
  static void bubbleSort(){
      List<String>? inputList =stdin.readLineSync()!.split(" ");
      List<int>intList=inputList.map(int.parse).toList();
       int n = intList.length;
      for (int i=0;i<n-1;i++){
        for(int j=0;j<n-i-1;j++){
          if(intList[j]>intList[j+1]){
            print("*****${intList[j]}  ${intList[j]}");
      int temp = intList[j];
      intList[j] = intList[j+1];
      intList[j+1] = temp;
      }
      }
print(intList);
  }
  }
}