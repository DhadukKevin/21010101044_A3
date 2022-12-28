import 'dart:io';
import 'user.dart';

void main(List<String> args) {
  User user = User();
  bool a = true;

  while (a) {
    stdout.write(
        "Enter 1 for insert \nEnter 2 for display \nEnter 3 for delete \nEnter 4 for update \nEnter 5 for search\nEnter 6 for exit\n");
    int n = int.parse(stdin.readLineSync()!);
    switch (n) {
      case 1:
        user.getUserDetail();
        break;

      case 2:
        user.displayUserDetail();
        break;

      case 3:
        stdout.write("Enter ID to delete : ");
        user.deleteUser(stdin.readLineSync(),
            callback: (i) => {
                  if (i == 1)
                    {print("Record Deleted Successfully")}
                  else
                    {print("Record does not found")}
                });
        print("------------------");
        break;

      case 4:
        stdout.write("Enter Id to update : ");
        String name = stdin.readLineSync()!;
        user.updateUser(name);
        break;

      case 5:
        print("-----------------");
        stdout.write("Enter ID to find a record : ");
        user.searchUser(stdin.readLineSync(), callback: (i) {
          if (i >= 0) {
            print('DATA FOUD AT INDEX : $i');
          } else {
            print('data does not found');
          }
          print("-----------------");
        });
        break;

      case 6:
        a = false;
        break;
    }
    print("");
  }
}
