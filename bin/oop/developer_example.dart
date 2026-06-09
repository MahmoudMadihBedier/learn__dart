import 'dart:ffi';

abstract class  Employee{
   int id;
  String name;
  double salary;
  int age;
  Employee(this.id,this.age,this.name,this.salary);
   void view(){
    print ("name :${name}");
    print("age ${age}");
    print ("salary${salary}");
    
  }
double calculateSalary();

}

class Developer extends Employee{
  String frameWork;
  Developer (int id,int age, String name, double salary,this.frameWork)
            :super(id,age,name,salary);


 @override
 void view(){
  super.view();
  print("frame work :${frameWork}");
 }
@override
double calculateSalary(){
  double actualSalary =0.25*salary;
  return actualSalary;
}


}
class Accountance extends Employee{ 

  bool certifiedExcel;
  Accountance(int id,String name,int age,double salary,this.certifiedExcel)
              :super(id,age,name,salary);

 
 @override
 void view(){
  super.view();
  print("is certified excel ${certifiedExcel}");
 }

double calculateSalary(){
  double actualSalary =0.25*salary;
  return actualSalary;
}
}