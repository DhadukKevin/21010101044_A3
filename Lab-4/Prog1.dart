import 'dart:io';

void main(List<String> args) {
  Intrest i=Intrest();
  stdout.write("Enter p: ");
  double p = double.parse(stdin.readLineSync()!);
  stdout.write("Enter n: ");
  double n = double.parse(stdin.readLineSync()!);
  stdout.write("Enter r: ");
  double r = double.parse(stdin.readLineSync()!);
  double intr=i.intrest(p, r,n);
  print("$intr");
}

class Intrest{
  double intrest(double p,double n,double r){
    return ((p*r*n)/100);
  }
  // double intrest(double p,double n,[double r=10]){
  //   return ((p*r*n)/100);
  // }
  // double intrest(double p, double r, [double? n]){
  //   if(n!=null){
  //     return ((p*r*n)/100);
  //   }
  //   else{
  //     return ((p*r)/100);
  //   }
  // }
  // double intrest(double p,double n,{double r=10}){
  //   return ((p*r*n)/100);
  // }
}
