import 'dart:io';

void main() {
  print("Enter Marks of S1 : ");
  double s1 = double.parse(stdin.readLineSync()!);
  print("Enter Marks of S2 : ");
  double s2 = double.parse(stdin.readLineSync()!);
  print("Enter Marks of S3 : ");
  double s3 = double.parse(stdin.readLineSync()!);
  print("Enter Marks of S4 : ");
  double s4 = double.parse(stdin.readLineSync()!);
  print("Enter Marks of S5 : ");
  double s5 = double.parse(stdin.readLineSync()!);

  double total = s1 + s2 + s3 + s4 + s5;
  double percentage = total / 5;

  print("Percentage = ${percentage}");
}
