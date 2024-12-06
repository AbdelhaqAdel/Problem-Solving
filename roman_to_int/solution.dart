

import 'dart:io';

class RomanToIntegerSolution{
  static setRomanTextAndConvertToInt(){
    print('please enter roman text...');
    String? roman=stdin.readLineSync();
   convertRomantoInt(roman!);

  }
  
  static convertRomantoInt(String roman){
     List<String>romanList=roman.split('');
     int resualtSum=0;
     for(int i=0;i<romanList.length;i++){
      switch (romanList[i]){
        case 'I' :  resualtSum<1&&resualtSum>0?resualtSum=resualtSum-1
        
        :resualtSum=resualtSum+1;break;
        
        case 'V' : resualtSum<5&&resualtSum>0?resualtSum=resualtSum-5:resualtSum=resualtSum+5;break;        
        case 'X' : resualtSum<10&&resualtSum>0?resualtSum=resualtSum-10:resualtSum=resualtSum+10;break;        
        case 'L' : resualtSum<50&&resualtSum>0?resualtSum=resualtSum-50:resualtSum=resualtSum+50;break;  
        case 'C' : resualtSum<100&&resualtSum>0?resualtSum=resualtSum-100:resualtSum=resualtSum+100;break;           
        case 'D' : resualtSum<500&&resualtSum>0?resualtSum=resualtSum-500:resualtSum=resualtSum+500;break;             
        case 'M' : resualtSum<1000&&resualtSum>0?resualtSum=resualtSum-1000:resualtSum=resualtSum+1000;break;   
         default:
         break;   
      }
     }
     print(resualtSum.abs());
  }

}


