import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;






class Compagny {
  final int userId;
  final int id;
  final String title;
  final String body;

  Compagny ({this.userId, this.id, this.title, this.body});

  factory Compagny .fromJson(Map<String, dynamic> json) {
    return Compagny (
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }

  Future getCompagny() async {
    final response =
    await http.get('https://jsonplaceholder.typicode.com/posts/1');

    if (response.statusCode == 200) {
      Iterable l = jsonDecode(response.body);
      // If server returns an OK response, parse the JSON.
      return l.map((model){
        return Compagny.fromJson(model);
      }).toList();
    } else {
      // If that response was not OK, throw an error.
      throw Exception('Failed to load post');
    }
  }
}