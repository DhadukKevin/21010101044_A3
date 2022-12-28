import 'dart:io';

void main(){
  print("Enter A : ");
  double a = double.parse(stdin.readLineSync()!);
  print("Enter B : ");
  double b = double.parse(stdin.readLineSync()!);
  print("Enter C : ");
  double c = double.parse(stdin.readLineSync()!);

  ((a>b && a>c)?print("${a} is largest"):(b>c)?print("${b} is largest"):print("${c} is largest"));

}