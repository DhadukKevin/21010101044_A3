import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter Number : ");
  int a=int.parse(stdin.readLineSync()!);

  while(a!=0){
    int n=a%10;
    stdout.write("${n}");
    a=a~/10;
  }
}