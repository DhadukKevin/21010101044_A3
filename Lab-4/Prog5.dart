import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter 1 for area of circle \nEnter 2 for area of triangle \nEnter 3 for area of square ");
  int n = int.parse(stdin.readLineSync()!);

  switch (n){
    case 1:
      stdout.write("Enter radius: ");
      double r = double.parse(stdin.readLineSync()!);
      double a=area(r);
      print("$a");
    break;
    case 2:
      stdout.write("Enter B: ");
      double b = double.parse(stdin.readLineSync()!);
      stdout.write("Enter H: ");
      double h = double.parse(stdin.readLineSync()!);
      double a=area(b,h);
      print("$a");
    break;
    case 3:
      stdout.write("Enter length: ");
      double l = double.parse(stdin.readLineSync()!);
      double a=area(l);
      print("$a");
    break;
  }
}
double area([double? r,double? h,double? b,double? l]){
  if(r!=null){
    return (3.14*r*r);
  }
  else if(h!=null && b!=null){
    return (0.5*h*b);
  }
  else if(l!=null){
    return (l*l);
  }
  else{
    return 0;
  }
} 
