import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter n1: ");
  double n1 = double.parse(stdin.readLineSync()!);
  stdout.write("Enter n2: ");
  double n2 = double.parse(stdin.readLineSync()!);
  print(max(n1,n2));
}
double max(double n1,double n2){
  if(n1>n2){
    return n1;
  }
  else{
    return n2;
  }
}
// double max(double n1,[double n2=10]){
//   if(n1>n2){
//     return n1;
//   }
//   else{
//     return n2;
//   }
// }
// double max(double n1, [double? n2]){
//   if(n2!=null){
//     if(n1>n2){
//       return n1;
//     }
//     else{
//       return n2;
//     }
//   }
//   else{
//     return n1;
//   }
// }
// double max(double n1,{double n2=10}){
//   if(n1>n2){
//     return n1;
//   }
//   else{
//     return n2;
//   }
// }
