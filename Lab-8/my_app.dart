import 'package:flutter/material.dart';
import 'package:lab_8/l8p1.dart';
import 'package:lab_8/l8p2.dart';
import 'package:lab_8/l8p3.dart';
import 'package:lab_8/l8p4.dart';
import 'package:lab_8/l8p5.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  L8p5(),
    );
  }
}