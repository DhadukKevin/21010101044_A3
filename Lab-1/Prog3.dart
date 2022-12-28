import 'dart:io';

void main() {
  print("Enter 1 for convert C To F \n Enter 2 for convert F To C: ");
  double n = double.parse(stdin.readLineSync()!);

  if (n == 1) {
    print("Enter Celcius : ");
    double c = double.parse(stdin.readLineSync()!);
    double f = (c * 9 / 5) + 32;
    print("Fahrenheit = ${f}");
  } else if (n == 2) {
    print("Enter Fahrenheit : ");
    double f = double.parse(stdin.readLineSync()!);
    double c = (f - 32) * 5 / 9;
    print("Celcius = ${c}");
  } else {
    print("Wron Input.............");
  }
}
