import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddUser extends StatefulWidget {
  dynamic name;
  dynamic city;
  dynamic image;
  AddUser({super.key, required this.name, required this.city, required this.image});

  @override
  State<AddUser> createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  TextEditingController nameController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController imageController = TextEditingController();
  void initState() {
    super.initState();
    nameController.text = widget.name ?? '';
    cityController.text = widget.city ?? '';
    imageController.text = widget.image ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Detail'),
        ),
        body: Center(
          child: Container(
            child: Card(
              child: Center(
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                              fontSize: 25,
                              color: Color.fromARGB(255, 27, 182, 239)),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(25),
                      decoration: BoxDecoration(
                        // border: Border.all(),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: TextFormField(
                        controller: nameController,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueAccent,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          // prefixIcon: Icon(Icons.),
                          labelText: "Name",
                        ),
                      ),
                      height: 60,
                      width: 290,
                    ),
                    Container(
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        // border: Border.all(),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: TextFormField(
                        // obscureText: true,
                        controller: cityController,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueAccent,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          // prefixIcon: Icon(Icons.password),
                          labelText: "City",
                        ),
                      ),
                      height: 60,
                      width: 290,
                    ),
                    Container(
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        // border: Border.all(),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: TextFormField(
                        // obscureText: true,
                        controller: imageController,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueAccent,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          // prefixIcon: Icon(Icons.password),
                          labelText: "image",
                        ),
                      ),
                      height: 60,
                      width: 290,
                    ),
                    Container(
                      // color: Colors.green,
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: ElevatedButton(
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                          Map<String, dynamic> map = {};
                          map['Name'] = nameController.text;
                          map['Age'] = 19;
                          map['City'] = cityController.text;
                          map['Image'] = imageController.text;
                          Navigator.of(context).pop(map);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            decoration: new BoxDecoration(
              boxShadow: [
                new BoxShadow(
                  color: Colors.black,
                  blurRadius: 15.0,
                ),
              ],
            ),
            height: 450,
            width: 350,
          ),
        ),
      ),
    );
  }
}
