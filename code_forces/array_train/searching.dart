
class Searching{
  int searchNumber(int n, List<int> num,int searchNum){
  //int n  =int.parse(stdin.readLineSync()!);
  int result=-1;
  for(int i=0;i<n;i++){
    if(num[i]==searchNum){
      result=i;
    }
  }
  return result;
}
}