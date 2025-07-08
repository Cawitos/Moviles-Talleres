import 'package:flutter/material.dart';
import 'ConsultarMascotas.dart';
import 'ConsultarCitas.dart';
import 'AgregarRecordatorio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AnimalBeats BD',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<Mascota>> mascotas;
  late Future<List<Cita>> citas;

  final TextEditingController _descripcionCtrl = TextEditingController();
  final TextEditingController _fechaCtrl = TextEditingController();

  // ID de prueba para agregar recordatorio (ajustar según base de datos real)
  final int _idCliente = 1;
  final int _idMascota = 1;

  @override
  void initState() {
    super.initState();
    mascotas = consultarMascotas();
    citas = consultarCitas();
  }

  void _agregarRecordatorio() async {
    final exito = await agregarRecordatorio(
      idMascota: _idMascota,
      idCliente: _idCliente,
      fecha: _fechaCtrl.text,
      descripcion: _descripcionCtrl.text,
    );

    final snackBar = SnackBar(
      content: Text(exito
          ? '✅ Recordatorio agregado correctamente'
          : '❌ Error al agregar el recordatorio'),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);

    _descripcionCtrl.clear();
    _fechaCtrl.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimalBeats - MySQL Demo'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("🐾 Mascotas", style: TextStyle(fontSize: 20)),
            FutureBuilder<List<Mascota>>(
              future: mascotas,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                }

                final data = snapshot.data!;
                return ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    final m = data[index];
                    return Card(
                      child: ListTile(
                        title: Text(m.nombre),
                        subtitle: Text('Especie: ${m.idEspecie}, Estado: ${m.estado}'),
                      ),
                    );
                  },
                );
              },
            ),
            const SizedBox(height: 20),
            const Text("📅 Citas", style: TextStyle(fontSize: 20)),
            FutureBuilder<List<Cita>>(
              future: citas,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                }

                final data = snapshot.data!;
                return ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    final c = data[index];
                    return Card(
                      child: ListTile(
                        title: Text('Servicio ID: ${c.idServicio}'),
                        subtitle: Text('${c.descripcion} - ${c.fecha}'),
                      ),
                    );
                  },
                );
              },
            ),
            const SizedBox(height: 20),
            const Text("➕ Agregar Recordatorio", style: TextStyle(fontSize: 20)),
            TextField(
              controller: _fechaCtrl,
              decoration: const InputDecoration(labelText: "Fecha (YYYY-MM-DD)"),
            ),
            TextField(
              controller: _descripcionCtrl,
              decoration: const InputDecoration(labelText: "Descripción"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: _agregarRecordatorio,
              child: const Text("Guardar Recordatorio"),
            ),
          ],
        ),
      ),
    );
  }
}
