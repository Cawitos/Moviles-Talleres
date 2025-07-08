import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

Future<List<Fotos>> ConsultarFotos() async {
  var url = Uri.parse("https://jsonplaceholder.typicode.com/photos");
  final response = await http.get(url);
  return compute(parseListaFotos, response.body);
}

List<Fotos> parseListaFotos(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<Fotos>((json) => Fotos.fromJson(json)).toList();
}

class Fotos {
  final int id;
  final String title;
  final int albumId;
  final String thumbnailUrl;

  Fotos({
    required this.id,
    required this.title,
    required this.albumId,
    required this.thumbnailUrl,
  });

  factory Fotos.fromJson(Map<String, dynamic> json) {
    return Fotos(
      id: json['id'],
      title: json['title'],
      albumId: json['albumId'],
      thumbnailUrl: json['thumbnailUrl'],
    );
  }
}