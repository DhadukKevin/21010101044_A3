import 'dart:io';
import 'const.dart';

class User{
  List<Map<String, dynamic>> userList = [] ;

  void getUserDetail(){
    Map<String, dynamic> _map ={};
    stdout.write("Enter User ID : ");
    _map[ID] = stdin.readLineSync();
    stdout.write("Enter User Name : ");
    _map[NAME] = stdin.readLineSync();
    stdout.write("Enter User City : ");
    _map[CITY] = stdin.readLineSync();
    stdout.write("Enter User Age : ");
    _map[AGE] = stdin.readLineSync();

    userList.add(_map);
  }   

  void displayUserDetail(){
    print("-----------------");
    for(int i=0;i<userList.length;i++){
      Map<String,dynamic> _map=userList[i];
      print("User Name : ${_map[ID]}");
      print("User Name : ${_map[NAME]}");
      print("User City : ${_map[CITY]}");
      print("User Age : ${_map[AGE]}");
      print("-----------------");
    }
  }

  void searchUser(id, {Function? callback}){
    bool a=true;
    for(int i=0;i<userList.length;i++){
      if(userList[i][ID].toString().toLowerCase()==id.toString().toLowerCase()){
        callback!(i);
        a=false;
        break;
      }
    }
    if(a){
      callback!(-1);
    }
  }

  void updateUser(id){
    int? a;
    searchUser(id,callback: (i){
      a=i;
    });
    
    if(a==-1){
      print("Record Does not found");
    }
    else{
      stdout.write("Enter 1 for update Name\nEnter 2 for update City\nEnter 3 for update Age\n");
      int n=int.parse(stdin.readLineSync()!);
      switch (n){
        case 1:
          stdout.write("Enter New Value : ");
          String newvalue = stdin.readLineSync()!;
          userList[a!][NAME]=newvalue;
          print("------------------");
          print("Record Updatetd Successfully");
          print(userList);
        break;
        case 2:
          stdout.write("Enter New Value : ");
          String newvalue = stdin.readLineSync()!;
          userList[a!][CITY]=newvalue;
          print("------------------");
          print("Record Updatetd Successfully");
          print(userList);
        break;
        case 3:
          stdout.write("Enter New Value : ");
          String newvalue = stdin.readLineSync()!;
          userList[a!][AGE]=newvalue;
          print("------------------");
          print("Record Updatetd Successfully");
          print(userList);
        break;
      }
    }
    print("------------------");
  }

  // void updateUser(key,oldvalue,newvalue,{Function? callback}){
  //   for(int i=0;i<userList.length;i++){
  //     if(userList[i][key].toString().toLowerCase()==oldvalue.toString().toLowerCase()){
  //       userList[i][key]=newvalue;
  //       callback!(1);
  //       return;
  //     }
  //     else{
  //       callback!(0);
  //     }
  //   }
  // }

  void deleteUser(id,{Function? callback}){
    print("------------------");
    bool a=true;
      for(int i=0;i<userList.length;i++){
        if(userList[i][ID].toString().toLowerCase()==id.toString().toLowerCase()){
          userList.remove(userList[i]);
          print(userList);
          callback!(1);
          a=false;
          return;
        }
      }
      if(a){
        callback!(0);
      }
    }
}