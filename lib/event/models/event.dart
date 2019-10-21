import 'dart:convert';
import 'dart:async';
import 'cat.dart';
import 'package:http/http.dart' as http;







class Event {
  final int id;
  final int nom_event;
  final String description;
  final String lieu;

  Event({this.id,this.nom_event, this.description, this.lieu});

  factory Event.fromJson(Map<String, dynamic> json) {
    return Event(
      id: json['id'],
      nom_event: json['nom_event'],
      description: json['description'],
      lieu: json['lieu'],
    );
  }
}