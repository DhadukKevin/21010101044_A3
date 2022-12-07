import 'dart:io';

void main() {
  print("Enter Hight in inches : ");
  double h = double.parse(stdin.readLineSync()!);
  print("Enter Wight in Pound : ");
  double w = double.parse(stdin.readLineSync()!);

  double meter = h * 0.254;
  double kg = w * 0.45359237;

  double bmi = kg / meter * meter;

  print("Your BMI is ${bmi}");
}
