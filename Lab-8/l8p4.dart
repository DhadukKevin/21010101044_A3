import 'package:flutter/material.dart';

class L8p4 extends StatefulWidget{
  const L8p4({super.key});

  @override
  State<L8p4> createState() => _L8p4State();
}

class _L8p4State extends State<L8p4> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                
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
          ],
        ),
      )
    );
  }
}