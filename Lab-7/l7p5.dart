import 'package:flutter/material.dart';

class L7p5 extends StatefulWidget {
  @override
  State<L7p5> createState() => _L7p5State();
}

class _L7p5State extends State<L7p5> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Expanded(
                      child: Container(
                    color: Colors.red,
                  )),
                  Expanded(
                    child: Container(
                      color: Colors.brown,
                    ),
                  ),
                  Expanded(
                      child: Container(
                    color: Colors.black,
                  )),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.green,
                    ),flex: 2,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.grey,
                    ),flex: 2,
                  ),
                  Expanded(
                      child: Container(
                    color: Color.fromARGB(255, 138, 26, 18),
                  )),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                      child: Container(
                    color: Colors.blue,
                  )
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.purple,
                    ),flex: 3,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.orangeAccent,
                    ),flex: 2,
                  ),
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}