import 'dart:io';

void main() {
  print("Enter Number : ");
  double n = double.parse(stdin.readLineSync()!);

  if (n < 0) {
    print("${n} is negetive");
  } else {
    print("${n} is Positive");
  }
}
