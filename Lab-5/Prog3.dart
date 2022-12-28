import 'dart:io';

void main(List<String> args) {
  Circle c=Circle();
  stdout.write("Enter Radius : ");
  double r = double.parse(stdin.readLineSync()!);
  double a=c.area(r);
  double p=c.perimeter(r);

  stdout.write("Area = ${a} \n");
  stdout.write("Perimeter = ${p} \n");
}
class Circle{
  
  double area(double r){
    return (3.14*r*r);
  }
  
  double perimeter(double r){
    return (2*3.14*r);
  }
}