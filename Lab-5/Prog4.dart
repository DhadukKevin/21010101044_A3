import 'dart:io';

void main(List<String> args) {
  Time t=Time();
  stdout.write("Enter Hour : ");
  int h = int.parse(stdin.readLineSync()!);
  stdout.write("Enter Miniute : ");
  int m = int.parse(stdin.readLineSync()!);
  t.addition(h,m);
  
}
class Time{
  
  addition(int h,int m){
    int m1=m~/60;
    int m2=m%60;

    h+=m1;
    stdout.write("$h hours : $m2 minutes");
  } 
}