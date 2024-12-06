import 'dart:io';

class SelectionSort {
  // Selection sort ********  
  static void selectionSort(){
      List<String>? inputList =stdin.readLineSync()!.split(" ");
      List<int>intList=inputList.map(int.parse).toList();
       int n = intList.length;
      for (int i=0;i<n-1;i++){
        int minIndex = i;
        for(int j=i+1;j<n;j++){
          if(intList[j]<intList[minIndex]){
            print("*****${intList[minIndex]}");
            minIndex=j;}
            print(intList[minIndex]);
                  print("--------------------$intList");
      }
            if (minIndex != i) {
      int temp = intList[i];
      intList[i] = intList[minIndex];
      intList[minIndex] = temp;
    }
      }
print(intList);

  }



}