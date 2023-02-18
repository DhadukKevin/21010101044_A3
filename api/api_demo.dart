import 'dart:convert';

import 'package:apidemo/model/student_listmodel/student_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
// import 'package:retrofit_example/example.dart';

import 'api/rest_client.dart';

class ApiDemo extends StatefulWidget {
  const ApiDemo({super.key});

  @override
  State<ApiDemo> createState() => _ApiDemoState();
}

class _ApiDemoState extends State<ApiDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Api Demo'),
      ),
      body: FutureBuilder<StudentListModel>(
        builder: (context, snapshot) {
          if (snapshot.data != null && snapshot.hasData) {
            return ListView.builder(
              itemBuilder: (context, index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Card(
                      child: Text(
                        snapshot.data!.resultList![index].name.toString(),
                      ),
                    ),
                  ],
                );
              },
              itemCount: snapshot.data!.resultList!.length,
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
        future: getStudents(),
      ),
    );
  }

  Future<StudentListModel> getStudents() async {
    final dio = Dio(); // Provide a dio instance/ config your dio headers globally
    final client = RestClient(dio);
    StudentListModel data = StudentListModel.fromJson(jsonDecode(await client.getStudents()));
    print(data.resultList!.length);
    return data;
  }
}
