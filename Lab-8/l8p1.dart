import 'package:flutter/material.dart';

class L8p1 extends StatefulWidget {
  @override
  State<L8p1> createState() => _L8p1State();
  
}

class _L8p1State extends State<L8p1> {
  @override
  var text1 = "Hello world";
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Text(
        text1,
        style: TextStyle(
          color: Colors.red,
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
      ),
    ));
  }
}



