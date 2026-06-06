import 'dart:io';

void main(){
  print("Sorting numbers in ascending order");
  print ("Enter three numbers:");
  int num1=int.parse(stdin.readLineSync()!);
  int num2=int.parse(stdin.readLineSync()!);
  int num3=int.parse(stdin.readLineSync()!);
  // Sorting logic by if condation 

  if (num1 <= num2 && num1 <= num3) {
    if (num2 <= num3) {
      print("$num1, $num2, $num3");
    } else {
      print("$num1, $num3, $num2");
    }
  } else if (num2 <= num1 && num2 <= num3) {
    if (num1 <= num3) {
      print("$num2, $num1, $num3");
    } else {
      print("$num2, $num3, $num1");
    }
  } else {
    if (num1 <= num2) {
      print("$num3, $num1, $num2");
    } else {
      print("$num3, $num2, $num1");
    }
  }
List<int> numbers=[num1, num2, num3];
for(int i=0;i<numbers.length ;i++){
  for (int j=0 ;j<numbers.length-1-i;j++){
    if (numbers[j]>numbers[j+1]){
      int temp=numbers[j];
      numbers[j]=numbers[j+1];
      numbers[j+1]=temp;
    }

  }
}

}