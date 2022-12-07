import 'dart:io';

void main(){
  print("Enter A : ");
  double a = double.parse(stdin.readLineSync()!);
  print("Enter Operator : ");
  var b = stdin.readLineSync()!;
  print("Enter C : ");
  double c = double.parse(stdin.readLineSync()!);
  double? s;
  if(b=='+'){
    s=a+c;
    print("${a} + ${c} = ${s}");
  }
  else if(b=='-'){
    s=a-c;
    print("${a} - ${c} = ${s}");
  }
  else if(b=='*'){
    s=a*c;
    print("${a} x ${c} = ${s}");
  }
  else if(b=='/'){
    s=a/c;
    print("${a} / ${c} = ${s}");
  }

}