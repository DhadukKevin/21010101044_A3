import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab_8/add_user.dart';

class UserLoginPage extends StatefulWidget {
  UserLoginPage({super.key});

  @override
  State<UserLoginPage> createState() => _UserLoginPageState();
}

class _UserLoginPageState extends State<UserLoginPage> {
  List<Map> users = [];

  void initUser() {
    Map<String, dynamic> map = {};
    // map['Name'] = 'Kevin';
    // map['Age'] = 19;
    // map['City'] = 'Rajkot';
    // users.add(map);

    // map = {};
    // map['Name'] = 'Rushi';
    // map['Age'] = 19;
    // map['City'] = 'Rajkot';
    // users.add(map);

    // map = {};
    // map['Name'] = 'Nevil';
    // map['Age'] = 19;
    // map['City'] = 'Rajkot';
    // users.add(map);

    // map = {};
    // map['Name'] = 'Jenil';
    // map['Age'] = 19;
    // map['City'] = 'Rajkot';
    // users.add(map);
  }

  @override
  void initState() {
    super.initState();
    initUser();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UserList'),
        actions: [
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return AddUser(
                    name: null,
                    city: null,
                    image: null,
                  );
                },
              )).then((value) {
                setState(() {
                  users.add(value);
                });

                // print(value.toString());
              });
            },
            child: Container(
              margin: EdgeInsets.only(right: 20),
              child: Icon(Icons.add),
            ),
          )
        ],
      ),
      body: users.length > 0
          ? ListView.builder(
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return AddUser(
                          name: users[index]['Name'],
                          city: users[index]['City'],
                          image: users[index]['Image'],
                        );
                      },
                    )).then((value) {
                      setState(() {
                        // users.add(value);
                        users[index] = value;
                      });

                      // print(value.toString());
                    });
                  },
                  child: Card(
                    child: Row(
                      children: [
                        Expanded(
                          child: CircleAvatar(
                            radius: 48, // Image radius
                            backgroundImage: NetworkImage(users[index]['Image'].toString()),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 15),
                            child: Text(
                              users[index]['Name'],
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          flex: 4,
                        )
                      ],
                    ),
                  ),
                );
              },
              itemCount: users.length,
            )
          : Center(
              child: Text(
              'no data found',
              style: TextStyle(fontSize: 25, color: Colors.grey),
            )),
    );
  }
}