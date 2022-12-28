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
                  // print('submit called');
                  print(myController.text);
                  // Navigator.pop(context,'heloo');

                },
                child: Text(
                  'Submit',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            // Container(
            //   margin: EdgeInsets.all(20),
            //   height: 100,
            //   width: 300,
            //   // color: Colors.red,
            // )
          ],
        ),
      ));
    // int _i = 0;
    // return Scaffold(
    //     appBar: AppBar(),
    //     body: Column(
    //       children: [
    //         TextButton(
    //           style: ButtonStyle(
    //             foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
    //           ),
    //           onPressed: () {
    //             setState(() {
    //               _i++;
    //               print(_i);
    //               print("Fidase");
    //             });
    //           },
    //           child: Text('TextButton'),
    //         ),
    //         ListView.builder(
    //             shrinkWrap: true,
    //             itemCount: _i,
    //             itemBuilder: (BuildContext ctxt, int index) {
    //               return Container(
    //                   color: Colors.blueGrey,
    //                   height: 100,
    //                   width: 100,
    //                   child: Text("Container numero $_i"));
    //             })
    //       ],
    //     )
    // );
  }
}
