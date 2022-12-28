import 'package:flutter/material.dart';

class L7p3 extends StatefulWidget {
  @override
  State<L7p3> createState() => _L7p3State();
}

class _L7p3State extends State<L7p3> {
  @override
  Widget build(BuildContext context) {
    return Row(
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