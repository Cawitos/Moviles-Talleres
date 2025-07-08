import 'dart:convert';
import 'package:http/http.dart' as http;

class Mascota {
  final int id;
  final String nombre;
  final int idEspecie;
  final int idCliente;
  final int idRaza;
  final String estado;
  final String fechaNacimiento;

  Mascota({
    required this.id,
    required this.nombre,
    required this.idEspecie,
    required this.idCliente,
    required this.idRaza,
    required this.estado,
    required this.fechaNacimiento,
  });

  factory Mascota.fromJson(Map<String, dynamic> json) {
    return Mascota(
      id: json['id'],
      nombre: json['nombre'],
      idEspecie: json['id_Especie'],
      idCliente: json['id_cliente'],
      idRaza: json['id_Raza'],
      estado: json['estado'],
      fechaNacimiento: json['fecha_nacimiento'],
    );
  }
}

Future<List<Mascota>> consultarMascotas() async {
  final response = await http.get(Uri.parse('http://localhost:3000/mascotas'));

  if (response.statusCode == 200) {
    final List<dynamic> jsonData = jsonDecode(response.body);
    return jsonData.map((e) => Mascota.fromJson(e)).toList();
  } else {
    throw Exception('Error al cargar mascotas');
  }
}
