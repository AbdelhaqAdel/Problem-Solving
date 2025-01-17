import 'dart:io';

class Solving{
  static void solve(){
    String ?input=stdin.readLineSync();
    int n=int.parse(input!);
    String ?inputList=stdin.readLineSync();
    List<String> strList=inputList!.split(' ');
    List<int>list=strList.map(int.parse).toList();
    int count=0;
    int x=0;
    for(int i=0;i<n;i++){
      x=list[i];
      for(int j=0;j<n;j++){
        if(x+1==list[j]){
          count++;
          break;
        }
      }  
    }
    print(count);

  }
}