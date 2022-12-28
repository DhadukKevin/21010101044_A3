import 'dart:io';

void main(){
    print("Enter A : ");
    double a = double.parse(stdin.readLineSync()!);
    print("Enter B : ");
    double b = double.parse(stdin.readLineSync()!);
    print("Enter C : ");
    double c = double.parse(stdin.readLineSync()!);

    if(a>b){
      if(a>c){
          print("${a} is largest");
      }
      else{
          print("${c} is largest");
      }
    }
    else if(b>c){
      print("${b} is largest");   
    }
    else{
      print("${c} is largest");
    }
}