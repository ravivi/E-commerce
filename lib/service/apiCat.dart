import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import '../models/Categorylist.dart';

 Future<String> loadEventJson() async{
    return await rootBundle.loadString("asset/event_app.json"); 
}

loadCat() async{
  var stu = await loadEventJson();
  var response = json.decode(stu);
  final CategoryList cat = CategoryList.fromJson(response);
  print(cat.listCats[0].categorie_evenement.evenement[0].participantList.listParticipants[0].utilisateur.user.username);
  
}

