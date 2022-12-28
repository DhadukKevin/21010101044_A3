import 'dart:io';

void main(List<String> args) {
  Candidate c=Candidate();
  c.GetCandidateDetails();
  c.DisplayCandidateDetails();
}
class Candidate{
  int? Candidate_ID; 
  String? Candidate_Name;
  int? Candidate_Age;
  int? Candidate_Weight;
  int? Candidate_Height;
  
  GetCandidateDetails(){
    stdout.write("Enter id : ");
    Candidate_ID=int.parse(stdin.readLineSync()!); 
    stdout.write("Enter name : ");
    Candidate_Name=stdin.readLineSync()!;
    stdout.write("Enter age : ");
    Candidate_Age = int.parse(stdin.readLineSync()!);
    stdout.write("Enter weight : ");
    Candidate_Weight = int.parse(stdin.readLineSync()!);
    stdout.write("Enter height : ");
    Candidate_Height = int.parse(stdin.readLineSync()!);
  }
  
  DisplayCandidateDetails(){
    stdout.write("id = $Candidate_ID \n");
    stdout.write("name = $Candidate_Name \n");
    stdout.write("age = $Candidate_Age \n");
    stdout.write("weigth = $Candidate_Weight \n");
    stdout.write("height = $Candidate_Height \n");
  }
}