class Empolees{
  String name;
  String nationalID;
  int avilable_permainion_hour;
  List<String> gender =["f", "m"] ;
  int Avaailbabel_vacations;
  double actual_salary;
  static double salary =1500 ;
  static double deduction_par_day= 85.5 ;
  static double deduction_par_hour=15.5;
 
  Empolees(
    this.Avaailbabel_vacations,
    this.actual_salary,
    this.avilable_permainion_hour,
    this.gender,
    this.name,
    this.nationalID
    );
    Empolees1(String name ,String nationalID){
      this.name =name;
      this.nationalID=nationalID;
    }

    

}