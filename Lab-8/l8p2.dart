import 'package:flutter/material.dart';

class L8p2 extends StatefulWidget {
  @override
  State<L8p2> createState() => _L8p2State();
  
}
Widget text(text){
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Andika',
      ),
    );
  }
class _L8p2State extends State<L8p2> {
  @override
  var text1 = "Hello world";
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: text(text1)
    ));
  }
}