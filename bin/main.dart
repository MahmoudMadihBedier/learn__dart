import 'functions/functions.dart';
import 'advanced_functions/advanced.dart';
import 'oop/oop_fundemental.dart';
import 'oop/developer_example.dart';
import 'oop/student_mangmentSYS.dart';


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
  
  List<int> Numbers=[5, 10, 15, 20, 25,2,60,8,3];
  bool searchResult = searchElement(Numbers, 900);
  if (searchResult) {
    print("Element found in the array.");
  } else {
    print("Element not found in the array.");
  }
  
  print("the sort of the array is :${selectionSort(Numbers)}");
  Student s1 = Student(1, "Ahmed", 20, "A");
  print("Student Name: ${s1.name}, Age: ${s1.age}, Grade : ${s1.grade}");


Empolees mahmoud= Empolees(10, 5000, 20, ["m"], "mahmoud", "98943898493");
print(mahmoud.actual_salary);


List<Student> students=[];
print ("enter the number of the student that need to enter :");
int numberOfStudent=int.parse(stdin.readLineSync()!);
for(int i=0 ;i<=numberOfStudent;i++){
  print ("enter the id of the student");
  int id =int.parse(stdin.readLineSync()!);
  print ("enter the student name :");
  String name = stdin.readLineSync()!;
  print("enter the age");
  int age = int.parse(stdin.readLineSync()!);
  print("enter the grade");
  int grade=int.parse(stdin.readLineSync()!);
  Student student=Student(
    name,
    id,
    age,
    grade
  );
  students.add(student);
}

*/


Employee d1=Developer(36363, 35, "mohamed", 1000, "flutter");
Employee a1=Accountance(636364, "ahmed",45,500,true );
a1.view();
print("${a1.calculateSalary()}");
print("----------------------");
d1.view();
print("${d1.calculateSalary()}");






}