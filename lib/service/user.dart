import 'dart:convert';

import '../models/activitie.dart';
import 'package:flutter/services.dart' show rootBundle;




 Future<String> loadAllJson() async{
    return await rootBundle.loadString("asset/user.json"); 
}

loadAllAC() async{
  var allRecever = await loadAllJson();
  var response = json.decode(allRecever);
  final UserZ allStart = UserZ.fromJson(response);
  print(allStart.lieu.ville.listVille[0].ville);
  //print(student.prenom);
  
}

