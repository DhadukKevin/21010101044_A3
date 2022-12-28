void main(List<String> args) {
  List<String> list=["Delhi","Mumbai","Bangalore","Hyderabad","Ahmedabad"];
  var selected='Ahmedabad';
  var newvalue="Surat";
  var index=list.indexOf(selected);
  list.replaceRange(index, index+1, [newvalue]);
  print(list);
}