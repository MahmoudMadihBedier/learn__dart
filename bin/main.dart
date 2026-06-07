import 'functions/functions.dart';
import 'dart:io';

void main(){
  print ("the number need to add in array:");
  /*int lengthOfArray=int.parse(stdin.readLineSync()!);
  List<int> Numbers=[];
  for(int i=0; i<lengthOfArray ;i++){
    print("Enter number ${i+1}:");
    int number=int.parse(stdin.readLineSync()!);
    Numbers.add(number);
  }
 
  int result = sumArray(Numbers);
  print("The sum of the array is: $result");
  */
  List<int> Numbers=[5, 10, 15, 20, 25,2,60,8,3];
  int maxResult = getmax(Numbers);
  print("The maximum value in the array is: $maxResult");
}