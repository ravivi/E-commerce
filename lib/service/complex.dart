import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import '../models/complex.dart';

 Future<String> loadComplexJson() async{
    return await rootBundle.loadString("asset/complex.json"); 
}

loadComplex() async{
  var stu = await loadComplexJson();
  var response = json.decode(stu);
  final Complex student = Complex.fromJson(response);
  print(student.fulname.name);
  print(student.fulname.prenom);
  //print(student.prenom);
  
}

