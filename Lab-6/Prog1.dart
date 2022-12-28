import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter n1: ");
  int n = int.parse(stdin.readLineSync()!);
  List<int> list=[0];

  for(int i=1;i<=n;i++){
    stdout.write("Enter List Element ");
    list.add(int.parse(stdin.readLineSync()!));
  }
  list.sort();
  stdout.write("Sorted elemnts are : ");
  for(int i=1;i<=n;i++){
    stdout.write(list[i]);
    stdout.write(" ");
  }
}