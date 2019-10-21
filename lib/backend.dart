import 'dart:convert';

import 'package:http/http.dart' as http;

  class Config {
    static final domain = 'http://51.77.197.177/';
  }

class Url {
  static final commune = "${Config.domain}/commune/";
  static final category = "${Config.domain}/categorie/";
  static final event = "${Config.domain}/event/";
}


  Future getcategories() async {
    String url = Url.category;
    var response = await http.Client().get(url);
    return json.decode(response.body);
  }

Future getEvents() async {
  String url = Url.event;
  var response = await http.Client().get(url);
  return json.decode(response.body);
}