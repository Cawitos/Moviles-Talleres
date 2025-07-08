import 'dart:convert';
import 'package:http/http.dart' as http;

Future<bool> agregarRecordatorio({
  required int idMascota,
  required int idCliente,
  required String fecha,
  required String descripcion,
}) async {
  final url = Uri.parse('http://localhost:3000/recordatorios');

  final response = await http.post(
    url,
    headers: {'Content-Type': 'application/json'},
    body: jsonEncode({
      'id_Mascota': idMascota,
      'id_cliente': idCliente,
      'fecha': fecha,
      'descripcion': descripcion,
    }),
  );

  if (response.statusCode == 200) {
    return true;
  } else {
    print('Error al guardar: ${response.body}');
    return false;
  }
}
