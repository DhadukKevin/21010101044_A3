import 'dart:io';

void main(List<String> args) {
  Friend friend = Friend();
  while(true){
    stdout.write("Enter 1 for enter data \nEnter 2 for read data\nEnter 3 for search data : ");
    int choice = int.parse(stdin.readLineSync()!);
    switch (choice){
      case 1: 
        friend.getFriendDetails();
        break;
      case 2:
          print("-------------------");
          friend.displayFriendDetails();
          break;
      case 3:
        stdout.write("Enter name to search : ");
        friend.searchFriend(stdin.readLineSync(),callback: (i)=>{
          if(i>=0){
            print("Friend's name found at index ${i}")
          }
          else{
            print("Friend's name does not found.")
          }
        });
        break;
      default:
          print("Invalid input");
    }
    print("=====================");
  }
}

class Friend{
  List<Map<String,Object?>> friends = [];
  
    void getFriendDetails(){ 
      Map<String,dynamic> map = {};
      stdout.write("Enter Name : ");
      map['name'] = stdin.readLineSync()!;
      stdout.write("Enter Age : ");
      map['age'] = stdin.readLineSync()!;
      stdout.write("Enter City : ");
      map['city'] = stdin.readLineSync()!;
      friends.add(map);
    }
    void displayFriendDetails(){
      for(int i=0;i<friends.length;i++){  
        print("Name : ${friends[i]['name']}");
        print("Age : ${friends[i]['age']}");
        print("City : ${friends[i]['city']}");
        print("-------------------");
      }
    }
    void searchFriend(name,{Function? callback}){
      for(int i=0;i<friends.length;i++){
        if(friends[i]['name'].toString().toLowerCase()==name.toString().toLowerCase()){
          callback!(i);
          return;
        } 
        callback!(-1);
        return;
      }    
    }
}