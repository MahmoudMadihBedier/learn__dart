class Student{
  int studentID;
  String studentName;
  int studentAge;
  int studentGrade;

Student(
  this.studentName,
  this.studentID,
  this.studentAge,
  this.studentGrade
);

void disPlayInfo(){
  print (" Student ID: $studentID Student Name: $studentName Student Age: $studentAge Student Grade: $studentGrade");
}
bool isPassed(){
  if (studentGrade>=60){
    return true;
  }else {
    return false;
  }
}
int upgradeGrade(int newGrade){
  studentGrade +=newGrade;
  return studentGrade;
}


}