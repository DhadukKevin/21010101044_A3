import 'dart:io';

void main(List<String> args) {
  Bank_Account c=Bank_Account();
  c.GetAccountDetails();
  c.DisplayAccountDetails();
}
class Bank_Account{
  int? Account_No; 
  String? User_Name;
  String? Email;
  String? Account_Type;
  double? Account_Balance;
  
  GetAccountDetails(){
  stdout.write("Enter act_no : ");
  Account_No=int.parse(stdin.readLineSync()!); 
  stdout.write("Enter name : ");
  User_Name=stdin.readLineSync()!;
  stdout.write("Enter email : ");
  Email = stdin.readLineSync()!;
  stdout.write("Enter act_type : ");
  Account_Type = stdin.readLineSync()!;
  stdout.write("Enter act_balance : ");
  Account_Balance = double.parse(stdin.readLineSync()!);
  }
  DisplayAccountDetails(){
    stdout.write("id = $Account_No \n");
    stdout.write("name = $User_Name \n");
    stdout.write("email = $Email \n");
    stdout.write("act_type = $Account_Type \n");
    stdout.write("act_balance = $Account_Balance \n");
  }
}