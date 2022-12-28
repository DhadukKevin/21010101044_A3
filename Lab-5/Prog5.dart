import 'dart:io';

void main(List<String> args) {
  Employee e=Employee();
  Manager m=Manager();
  e.GetEmployeeDetails();
  e.DisplayEmployeeDetails();
  m.GetManagerDetails();
  m.DisplayManagerDetails();
}

class Member{
  String? Name;
  int? Age;
  String? Phone;
  String? Address;
  double? Salary;

  printSalary(){
    stdout.write("Salary = $Salary \n");
  }
  
}
class Employee extends Member{
  String? Specialization;

  GetEmployeeDetails(){
    print("Enter Employee's Detail");
    stdout.write("Enter name : ");
    Name=stdin.readLineSync()!;
    stdout.write("Enter age : ");
    Age = int.parse(stdin.readLineSync()!);
    stdout.write("Enter Phone : ");
    Phone=stdin.readLineSync()!;
    stdout.write("Enter Address : ");
    Address=stdin.readLineSync()!;
    stdout.write("Enter Salary : ");
    Salary = double.parse(stdin.readLineSync()!);
    stdout.write("Enter Specialization : ");
    Specialization=stdin.readLineSync()!;
    print("===========================================");
  }
  DisplayEmployeeDetails(){
    stdout.write("Name : $Name \n");
    stdout.write("Age : $Age \n");
    stdout.write("Phone : $Phone \n");
    stdout.write("Address : $Address \n");
    printSalary();
    stdout.write("Specialization : $Specialization \n");
    print("===========================================");
  }

}
class Manager extends Member{
  String? Department;
  GetManagerDetails(){
    print("Enter Manager's Detail");
    stdout.write("Enter name : ");
    Name=stdin.readLineSync()!;
    stdout.write("Enter age : ");
    Age = int.parse(stdin.readLineSync()!);
    stdout.write("Enter Phone : ");
    Phone=stdin.readLineSync()!;
    stdout.write("Enter Address : ");
    Address=stdin.readLineSync()!;
    stdout.write("Enter Salary : ");
    Salary = double.parse(stdin.readLineSync()!);
    stdout.write("Enter Specialization : ");
    Department=stdin.readLineSync()!;
    print("===========================================");
  }
  DisplayManagerDetails(){
    stdout.write("Name : $Name \n");
    stdout.write("Age : $Age \n");
    stdout.write("Phone : $Phone \n");
    stdout.write("Address : $Address \n");
    printSalary();
    stdout.write("Department : $Department \n");
    print("===========================================");
  }
}