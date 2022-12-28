//Addition, Subtraction, Multiplication, Division
import 'dart:io';

void main() {
  while (true) {
    print(
        "Enter 1 for Addition \nEnter 2 for substraction \nEnter 3 for multiplication \nEnter 4 for Division\nEnter 5 For Exit");
    double n = double.parse(stdin.readLineSync()!);
    if (n == 1) {
      print("Enter A : ");
      double a = double.parse(stdin.readLineSync()!);
      print("Enter B : ");
      double b = double.parse(stdin.readLineSync()!);

      double c = a + b;
      print("${a}+${b} = ${c}");
    }  if (n == 2) {
      print("Enter A : ");
      double a = double.parse(stdin.readLineSync()!);
      print("Enter B : ");
      double b = double.parse(stdin.readLineSync()!);

      double c = a - b;
      print("${a}-${b} = ${c}");
    }  if (n == 3) {
      print("Enter A : ");
      double a = double.parse(stdin.readLineSync()!);
      print("Enter B : ");
      double b = double.parse(stdin.readLineSync()!);

      double c = a * b;
      print("${a}*${b} = ${c}");
    }  if (n == 4) {
      print("Enter A : ");
      double a = double.parse(stdin.readLineSync()!);
      print("Enter B : ");
      double b = double.parse(stdin.readLineSync()!);

      double c = a / b;
      print("${a}/${b} = ${c}");
    }  if (n == 5) {
      break;
    }
  }
}
