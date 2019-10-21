import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import '../models/cursus.dart';

 Future<String> loadCursusJson() async{
    return await rootBundle.loadString("asset/cursus.json"); 
}

loadCursus() async{
  var stu = await loadCursusJson();
  var response = json.decode(stu);
  final ListCursus cursus = ListCursus.fromJson(response);
  return cursus;
  //print(student.prenom);
  
}

