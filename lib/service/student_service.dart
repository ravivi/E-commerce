import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import '../models/student_model.dart';

 Future<String> loadStudentJson() async{
    return await rootBundle.loadString("asset/student.json"); 
}

loadStudent() async{
  var stu = await loadStudentJson();
  var response = json.decode(stu);
  final Student student = Student.fromJson(response);
  print(student.nom);
  print(student.prenom);
  
}

