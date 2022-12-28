import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter n1: ");
  int n1 = int.parse(stdin.readLineSync()!);
  int a=check(n1);
  if(a==1){
    print("prime");
  }
  else{
    print("not prime");
  }
}
// int check(int n){
//   bool flag=false;
//   for(int i=2;i<n;i++){
//     if(n%i==0){
//       flag=true;
//       break;
//     }
//   }
//   if(flag){
//     return 0;
//   }
//   else{
//     return 1;
//   }
// }
// int check([int n=10]){
//   bool flag=false;
//   for(int i=2;i<n;i++){
//     if(n%i==0){
//       flag=true;
//       break;
//     }
//   }
//   if(flag){
//     return 0;
//   }
//   else{
//     return 1;
//   }
// }
// int check({int n=10}){
//   bool flag=false;
//   for(int i=2;i<n;i++){
//     if(n%i==0){
//       flag=true;
//       break;
//     }
//   }
//   if(flag){
//     return 0;
//   }
//   else{
//     return 1;
//   }
// }
int check([int? n]){
  bool flag=false;
  if(n!=null){
    for(int i=2;i<n;i++){
    if(n%i==0){
      flag=true;
      break;
    }
  }
  if(flag){
    return 0;
  }
  else{
    return 1;
  }
  }
  else{
    return 0;
  }
  
}