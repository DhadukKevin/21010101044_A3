import 'dart:convert';
/// createdAt : "2022-11-23T08:59:43.277Z"
/// name : "Guadalupe Will"
/// avatar : "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/574.jpg"
/// branch : "Beauty"
/// enrollment : 91708
/// id : "1"

StudentListItem studentListModelFromJson(String str) => StudentListItem.fromJson(json.decode(str));
String studentListModelToJson(StudentListItem data) => json.encode(data.toJson());
class StudentListItem {
  StudentListItem({
      String? createdAt, 
      String? name, 
      String? avatar, 
      String? branch, 
      num? enrollment, 
      String? id,}){
    _createdAt = createdAt;
    _name = name;
    _avatar = avatar;
    _branch = branch;
    _enrollment = enrollment;
    _id = id;
}

  StudentListItem.fromJson(dynamic json) {
    _createdAt = json['createdAt'];
    _name = json['name'];
    _avatar = json['avatar'];
    _branch = json['branch'];
    _enrollment = json['enrollment'];
    _id = json['id'];
  }
  String? _createdAt;
  String? _name;
  String? _avatar;
  String? _branch;
  num? _enrollment;
  String? _id;
StudentListItem copyWith({  String? createdAt,
  String? name,
  String? avatar,
  String? branch,
  num? enrollment,
  String? id,
}) => StudentListItem(  createdAt: createdAt ?? _createdAt,
  name: name ?? _name,
  avatar: avatar ?? _avatar,
  branch: branch ?? _branch,
  enrollment: enrollment ?? _enrollment,
  id: id ?? _id,
);
  String? get createdAt => _createdAt;
  String? get name => _name;
  String? get avatar => _avatar;
  String? get branch => _branch;
  num? get enrollment => _enrollment;
  String? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['createdAt'] = _createdAt;
    map['name'] = _name;
    map['avatar'] = _avatar;
    map['branch'] = _branch;
    map['enrollment'] = _enrollment;
    map['id'] = _id;
    return map;
  }

}