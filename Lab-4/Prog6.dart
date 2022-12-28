import 'dart:io';

void main(List<String> args) {
  int even=0,odd=0;
  stdout.write("Enter n1: ");
  int n = int.parse(stdin.readLineSync()!);
  List? list=new List<int>.filled(n,0,growable: false);
  for(int i=0;i<n;i++){
    list[i]=i+1;
  }
  for(int i=0;i<n;i++){
    if(list[i]%2==0){
      even++;
    }
    else{
      odd++;
    }
  }
  print("there are $even Even numbers and there is $odd Odd number");
}