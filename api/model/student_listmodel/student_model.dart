// import 'StudentListItem.dart';

import 'package:apidemo/model/student_listmodel/StudentListItem.dart';

class StudentListModel{
  List<StudentListItem>? _resultList;
  StudentListModel({
    List<StudentListItem>? resultList,
  }){
    _resultList = resultList;
  }

  List<StudentListItem>? get resultList => _resultList;
  StudentListModel.fromJson(dynamic json){
    if(json!=null){
      _resultList = [];
      json.forEach((v){
        _resultList?.add(StudentListItem.fromJson(v));
      });
    }
  }
}

// class StudentListModel {
//   List<StudentListItem>? _resultList;

//   StudentListModel({
//     List<StudentListItem>? resultList,
//   }) {
//     _resultList = resultList;
//   }

//   List<StudentListItem>? get resultList => _resultList;

//   StudentListModel.fromJson(var json) {
//     if (json != null) {
//       _resultList = [];
//       json.toList().forEach((v) {
//         _resultList?.add(StudentListItem.fromJson(v));
//       });
//     }
//   }
// }