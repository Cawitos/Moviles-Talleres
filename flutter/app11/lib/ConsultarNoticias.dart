import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

Future<List<Noticias>> ConsultarNoticias() async {
  var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
  final response = await http.get(url);
  return compute(parseListaNoticias, response.body);
}

List<Noticias> parseListaNoticias(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<Noticias>((json) => Noticias.fromJson(json)).toList();
}

class Noticias {
  final int userId;
  final int id;
  final String title;
  final String body;

  Noticias({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory Noticias.fromJson(Map<String, dynamic> json) {
    return Noticias(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}