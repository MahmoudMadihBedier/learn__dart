abstract class Shape {
  double width;
  double hight;
  Shape(this.width ,this.hight);
  double calculateArea();
}

class Rectangler extends Shape{
  Rectangler(double width ,double hight):super(width,hight);
  @override
  double calculateArea(){
    double area= width*hight ;
    return area;
  }

}
class Triangle extends Shape{
  Triangle(double width ,double hight):super(width,hight);
@override
  double calculateArea(){
   late double area=width * hight*0.5 ;
   return area;

  }
    
  }
