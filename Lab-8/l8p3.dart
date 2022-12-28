import 'package:flutter/material.dart';

class L8p3 extends StatefulWidget {
  @override
  State<L8p3> createState() => _L8p3State();
}

class _L8p3State extends State<L8p3> {
  final myController = TextEditingController();
  @override
  var text1 = "Hello world";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
  }
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.red,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            child: Text(
              text1,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
          TextField(
            controller: myController,
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.green,
                  margin: EdgeInsets.only(top: 20),
                  child: TextButton(
                    onPressed: () {
                      print(myController.text);
                    },
                    child: Text(
                      'Submit',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: Container(
                  color: Colors.red,
                  margin: EdgeInsets.only(top: 20),
                  child: TextButton(
                    onPressed: () {
                      print("login button click");
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    ));
  }
}
