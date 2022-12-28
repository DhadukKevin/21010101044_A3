import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter A : ");
  int a = int.parse(stdin.readLineSync()!);
  stdout.write("Enter B : ");
  int b = int.parse(stdin.readLineSync()!);
  stdout.write("Elements are : ");
  for(int i=a;i<=b;i++){
    if(i%2==0 && i%3!=0){
      stdout.write("${i} ");
    }
  }
}