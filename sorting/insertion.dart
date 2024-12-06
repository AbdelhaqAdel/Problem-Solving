import 'dart:io';

class InsertionSort {
  // Insertion sort ********  
  static void insertionSort(){
      List<String>? inputList =stdin.readLineSync()!.split(" ");
      List<int>intList=inputList.map(int.parse).toList();
       int n = intList.length;
       int? key,j;
      for (int i=1;i<n;i++){  //80 90 60 40 70
      key=intList[i]; //90
      j=i-1;
      while(j!>=0&&key<intList[j]){
        intList[j+1]=intList[j];
        j--;
      }
      intList[j+1]=key;
  }
  print(intList);
  }
}