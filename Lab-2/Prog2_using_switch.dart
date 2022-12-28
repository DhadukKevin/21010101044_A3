//Addition, Subtraction, Multiplication, Division
import 'dart:io';

void main() {
    bool a=true;
  while (a) {
    print(
        "Enter 1 for Addition \nEnter 2 for substraction \nEnter 3 for multiplication \nEnter 4 for Division\nEnter 5 For Exit");
    int n = int.parse(stdin.readLineSync()!);

    switch(n){
        case 1:{
            print("Enter A : ");
            double a = double.parse(stdin.readLineSync()!);
            print("Enter B : ");
            double b = double.parse(stdin.readLineSync()!);

            double c = a + b;
            print("${a}+${b} = ${c}");
        }break;
        case 2:{
            print("Enter A : ");
            double a = double.parse(stdin.readLineSync()!);
            print("Enter B : ");
            double b = double.parse(stdin.readLineSync()!);

            double c = a - b;
            print("${a}-${b} = ${c}");
        }break;
        case 3:{
            print("Enter A : ");
            double a = double.parse(stdin.readLineSync()!);
            print("Enter B : ");
            double b = double.parse(stdin.readLineSync()!);

            double c = a * b;
            print("${a}*${b} = ${c}");
        }break;
        case 4:{
            print("Enter A : ");
            double a = double.parse(stdin.readLineSync()!);
            print("Enter B : ");
            double b = double.parse(stdin.readLineSync()!);

            double c = a / b;
            print("${a}/${b} = ${c}");
        }break;
        case 5:{
            a=false;
        }break;
    }
  }
}
