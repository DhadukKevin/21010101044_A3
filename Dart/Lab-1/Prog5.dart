import 'dart:io';

void main() {
  print("Enter Length in Meter : ");
  double m = double.parse(stdin.readLineSync()!);

  double f = m * 3.281;

  print("${m} meter = ${f} feet");
}
