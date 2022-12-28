import 'package:flutter/material.dart';

class L7p2 extends StatefulWidget {
  @override
  State<L7p2> createState() => _L7p2State();
}

class _L7p2State extends State<L7p2> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          Expanded(
              child: Container(
                color: Colors.green,
              )
          ),
          Expanded(
              child: Container(
                color: Colors.grey,
              )
          ),
          Expanded(
              child: Container(
                color: Colors.blueGrey,
              )
          ),
        ]
    );
  }
}