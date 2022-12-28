import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter n1: ");
  int n1 = int.parse(stdin.readLineSync()!);
  fibonaci(n1);
}
// void fibonaci(int n){
//   int a=0,b=1,fib;
//   stdout.write("$a $b ");
//   for(int i=2;i<n;i++){
//     fib=a+b;
//     stdout.write("$fib ");
//     a=b;
//     b=fib;
//   }
// }
// void fibonaci([int n=10]){
//   int a=0,b=1,fib;
//   stdout.write("$a $b ");
//   for(int i=2;i<n;i++){
//     fib=a+b;
//     stdout.write("$fib ");
//     a=b;
//     b=fib;
//   }
// }
// void fibonaci({int n=10}){
//   int a=0,b=1,fib;
//   stdout.write("$a $b ");
//   for(int i=2;i<n;i++){
//     fib=a+b;
//     stdout.write("$fib ");
//     a=b;
//     b=fib;
//   }
// }
void fibonaci([int? n]){
  int a=0,b=1,fib;
  if(n!=null){
    stdout.write("$a $b ");
    for(int i=2;i<n;i++){
      fib=a+b;
      stdout.write("$fib ");
      a=b;
      b=fib;
    }
  }
  else{
    stdout.write("$a $b ");
  }
}