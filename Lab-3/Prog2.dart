import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter N : ");
  int a=int.parse(stdin.readLineSync()!);
  int s=1;
  for(int i=1;i<=a;i++){
    s=s*i;
  }
  stdout.write("${a}! = ${s}");
}