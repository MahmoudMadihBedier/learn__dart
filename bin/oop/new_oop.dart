/*
/name parameter
class Car{
 late String name;
late String model;
late int year;
  
  Car(this.name, this.model, this.year);
  Car.withOuytSpeed({ required this.name,required this.model,required this.year});
}

//named constractor without resquerd parmeter
class Driver{
  String name ;
 late String licenseNumber;
  Driver(this.name, this.licenseNumber);
  Driver.withoutLicense(this.name){
    licenseNumber="No license";
  }
}
*/

class Car{
  final String brand;
  final int speed ;
  Car(this.brand, this.speed);
}
class Person{
  final String name;
  final Car car;
  Person(this.name, this.car);
  
}