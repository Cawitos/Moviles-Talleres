import 'dart:convert';
import 'package:http/http.dart' as http;

class Cita {
  final int id;
  final int idMascota;
  final int idCliente;
  final int idServicio;
  final String fecha;
  final String descripcion;

  Cita({
    required this.id,
    required this.idMascota,
    required this.idCliente,
    required this.idServicio,
    required this.fecha,
    required this.descripcion,
  });

  factory Cita.fromJson(Map<String, dynamic> json) {
    return Cita(
      id: json['id'],
      idMascota: json['id_Mascota'],
      idCliente: json['id_cliente'],
      idServicio: json['id_Servicio'],
      fecha: json['fecha'],
      descripcion: json['Descripcion'] ?? '',
    );
  }
}

Future<List<Cita>> consultarCitas() async {
  final response = await http.get(Uri.parse('http://localhost:3000/citas'));

  if (response.statusCode == 200) {
    final List<dynamic> jsonData = jsonDecode(response.body);
    return jsonData.map((e) => Cita.fromJson(e)).toList();
  } else {
    throw Exception('Error al cargar citas');
  }
}
