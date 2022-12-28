import 'dart:io';

void main(List<String> args) {
  double sum=0;
  stdout.write("Enter n1: ");
  int n = int.parse(stdin.readLineSync()!);
  List? list=new List<int>.filled(n,0,growable: false);
  for(int i=0;i<n;i++){
    list[i]=i+1;
  }
  for(int i=0;i<n;i++){
    if(list[i]%3==0 || list[i]%5==0){
      sum=sum+list[i];
    }
  }
  print("$sum");
}