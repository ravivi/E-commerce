import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;

import 'event.dart';






class Categorie {
  final int id;
  final String nom;

  Categorie({this.id, this.nom});

  factory Categorie.fromJson(Map<String, dynamic> json) {
    return Categorie(
      id: json['id'],
      nom: json['nom'],
    );
  }
  Future<Map<Categorie, List<Event>>> getCats() async {
    final response =
    await http.get('http://51.77.197.177/categorie/');

    if (response.statusCode == 200) {
      Map<Categorie, List<Event>> catevent = {};

      Iterable l = jsonDecode(response.body);

      for(var i in l) {
        Categorie cat = Categorie.fromJson(i);
        List<Event> events = [];
        for(var j in i['categorie_evenement']) {
          events.add(Event.fromJson(j));
        }
        catevent.addAll({cat: events});
      }
      return catevent;
    } else {
      // If that response was not OK, throw an error.
      throw Exception('Failed to load post');
    }
  }
}