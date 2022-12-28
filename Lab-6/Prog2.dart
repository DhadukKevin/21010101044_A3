import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter n1: ");
  int n = int.parse(stdin.readLineSync()!);
  List<int> list=[];
  List<int> list1=[];

  for(int i=1;i<=n;i++){
    stdout.write("Enter element of list 1 :  ");
    list.add(int.parse(stdin.readLineSync()!));
  }
  
  for(int i=1;i<=n;i++){
    stdout.write("Enter element of list 2 :  ");
    list1.add(int.parse(stdin.readLineSync()!));
  }

  list.removeWhere((item) => !list1.contains(item));

  print(list);
}