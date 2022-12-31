import 'package:flutter/material.dart';

class L8p5 extends StatefulWidget {
  const L8p5({super.key});

  @override
  State<L8p5> createState() => _L8p5State();
}

class _L8p5State extends State<L8p5> {
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
     return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Container(
            child: Center(
              child: Text(txt),
            ),
            height: 100,
            width: 500,
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: myController,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blueAccent,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                hintText: "Enter Your Text...",
                hintStyle: TextStyle(
                  color: Colors.purple,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),
          Container(
            color: Colors.green,
            child: TextButton(
              onPressed: () {
                setState(() {
                  txt = myController.text;
                });
                print(myController.text);
              },
              child: Text(
                'Submit',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
