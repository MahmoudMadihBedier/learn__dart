abstract class Person {
  String name;
  String address;
  
Person(this.name ,this.address);
get getName{
     return this.name;
}
get getAdress{
  return this.address;
}
set setAdress(String aderssSet){
  this.address=aderssSet;
}
}

class Student extends Person{
  int numcourses;
  List<Map<String,int>> courseDetails;
  int grades;
  Student(String name ,String adress ,this.numcourses ,this.courseDetails,this.grades)
  :super(name,adress);
   
 void  addCourse(String addCourseName, int grade){
      Map<String,int> courseGrades={};
      courseGrades.addAll({
        addCourseName:grade
      });
    courseDetails.add(courseGrades);
   }

void printGrads({List<String>? cousesNmes}){
  if (cousesNmes == null) {
    print("All courses and grades:");
    for (var element in courseDetails) {
      print(element);
    }
  } else {
    print("Grades for selected courses:");
    for (var courseDetail in courseDetails) {
      for (var courseName in cousesNmes) {
        if (courseDetail.containsKey(courseName)) {
          print("$courseName: ${courseDetail[courseName]}");
        }
      }
    }
  }
}
void getAverageGrade(){
  int totalGrades = 0;
  int totalCourses = courseDetails.length;

  for (var courseDetail in courseDetails) {
    for (var grade in courseDetail.values) {
      totalGrades += grade;
    }
  }

  double averageGrade = totalCourses > 0 ? totalGrades / totalCourses : 0;
  print("Average Grade: $averageGrade");
  

}
}

class Teacher extends Person{
  String specialization;
  
  // the list that name tech course contant between the student and the
  //courses and the grades that the student get in this course
  List<Map<int,Map<String,int>>> techCourses;
  Teacher(String name ,String adress ,this.specialization ,this.techCourses)
  :super(name,adress);
  
  void addCourse(String courseName){
    Map<String,int> courseDetails={
      courseName: 0
    };
    techCourses.add({techCourses.length+1:courseDetails});
  }
  void removeCource(String courseName, int grades){
    techCourses.removeWhere((courseEntry) {
      return courseEntry.values.any((details) =>
          details[courseName] == grades);
    });
  }
}
