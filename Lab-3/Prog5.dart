import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter a String :");
  String s=stdin.readLineSync()!;

  print(s.split('').reversed.join());
}