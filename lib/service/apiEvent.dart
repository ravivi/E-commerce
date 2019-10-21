import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import '../models/evenementlist.dart';

 Future<String> loadEventJson() async{
    return await rootBundle.loadString("asset/event_appEven.json"); 
}

loadEvent() async{
  var stu = await loadEventJson();
  var response = json.decode(stu);
  final EvenementList event = EvenementList.fromJson(response);
  print(event.listEvents[0].participantList.listParticipants[0].utilisateur.user.username);
  //print(student.prenom);
  
}

