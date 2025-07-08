import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Principal());
}

final txtNombre = TextEditingController();
final txtDescripcion = TextEditingController();
final txtFechaLanz = TextEditingController();
final txtUbicacion = TextEditingController();
final txtFotografia = TextEditingController();
final txtColor = TextEditingController();

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "SENA | CEET",
      home: HomePrincipal(),
    );
  }
}

class HomePrincipal extends StatefulWidget {
  const HomePrincipal({super.key});

  @override
  State<HomePrincipal> createState() => _HomePrincipalState();
}

class _HomePrincipalState extends State<HomePrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FICHA | 2925960"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: aprendices.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(aprendices[index]["foto"]),
            ),
            title: Text(aprendices[index]["nombre"]),
            subtitle: Text(aprendices[index]["ubicacion"]),
            trailing: Icon(Icons.arrow_circle_right_sharp),
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: Text(aprendices[index]["nombre"]),
                      backgroundColor: aprendices[index]["color_distintivo"],
                      foregroundColor: Colors.white,
                    ),
                    body: ListView(
                      padding: const EdgeInsets.all(20),
                      children: [
                        Center(
                          child: CircleAvatar(
                            radius: 80,
                            backgroundImage: NetworkImage(
                              aprendices[index]["foto"],
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        ListTile(
                          leading: const Icon(Icons.phone),
                          title: Text("Teléfono"),
                          subtitle: Text(aprendices[index]["telefono"]),
                        ),
                        ListTile(
                          leading: const Icon(Icons.location_on),
                          title: Text("Ubicación"),
                          subtitle: Text(aprendices[index]["ubicacion"]),
                        ),
                        ListTile(
                          leading: const Icon(Icons.calendar_today),
                          title: Text("Fecha de inscripción"),
                          subtitle: Text(
                            aprendices[index]["fecha_inscripcion"],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.white,
        backgroundColor: Colors.purple,
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return Scaffold(
                appBar: AppBar(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.purple,
                  title: Text("Añadir Aprendiz"),
                ),
                body: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: txtNombre,
                        decoration: InputDecoration(
                          labelText: "Nombres",
                          hintText: "Nombres del aprendiz",
                          icon: Icon(Icons.file_copy),
                        ),
                      ),
                      TextFormField(
                        controller: txtDescripcion,
                        decoration: InputDecoration(
                          labelText: "Apellidos",
                          hintText: "Apellido del aprendiz",
                          icon: Icon(Icons.file_copy),
                        ),
                      ),
                      TextFormField(
                        controller: txtFechaLanz,
                        decoration: InputDecoration(
                          labelText: "Inscripcion",
                          hintText: "Fecha de inscripcion",
                          icon: Icon(Icons.file_copy),
                        ),
                      ),
                      TextFormField(
                        controller: txtFotografia,
                        decoration: InputDecoration(
                          labelText: "Ubicación",
                          hintText: "Ubicación del sitio turístico",
                          icon: Icon(Icons.file_copy),
                        ),
                      ),
                      TextFormField(
                        controller: txtColor,
                        decoration: InputDecoration(
                          labelText: "Telefono",
                          hintText: "Telefono del aprendiz",
                          icon: Icon(Icons.file_copy),
                        ),
                      ),
                    ],
                  ),
                ),
                floatingActionButton: FloatingActionButton(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.green,
                  onPressed: () {
                    if (txtNombre.text == "") {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          backgroundColor: Colors.red,
                          content: Text("ERROR! Los espacios estan vacíos"),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: Colors.green,
                          content: Text(
                            "Se ha guardado satisfactoriamente el aprendiz: ${txtNombre.text}",
                          ),
                        ),
                      );
                    }
                  },
                  child: Icon(Icons.save),
                ),
              );
            },
          );
        },
        child: Icon(Icons.account_circle),
      ),
    );
  }
}

List<Map<String, dynamic>> aprendices = [
  {
    "nombre": "AMAYA MARTINEZ FABIAN YESID",
    "telefono": "573195638261",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.red, // Cambié a un color distintivo
    "foto":
        "https://estaticos-cdn.prensaiberica.es/clip/3080e2a3-a69a-4db2-a394-667348b5b1a8_alta-libre-aspect-ratio_default_0.jpg",
  },
  {
    "nombre": "BELTRAN BUSTOS JULIAN DANIEL",
    "telefono": "3226607792",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.blue,
    "foto": "https://media.tenor.com/jNaE0MKsTnQAAAAe/mapache-comiendo.png",
  },
  {
    "nombre": "BORDA ARDILA RONNY",
    "telefono": "3219759220",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.green,
    "foto":
        "https://estaticos-cdn.prensaiberica.es/clip/3080e2a3-a69a-4db2-a394-667348b5b1a8_alta-libre-aspect-ratio_default_0.jpg",
  },
  {
    "nombre": "CADENA QUINTERO ALAN JAIR",
    "telefono": "5714886956",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.orange,
    "foto":
        "https://estaticos-cdn.prensaiberica.es/clip/3080e2a3-a69a-4db2-a394-667348b5b1a8_alta-libre-aspect-ratio_default_0.jpg",
  },
  {
    "nombre": "CAMACHO FERRUCHO CARLOS EDUARDO",
    "telefono": "3143808047",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.teal,
    "foto": "https://media.tenor.com/jNaE0MKsTnQAAAAe/mapache-comiendo.png",
  },
  {
    "nombre": "CASTAÑEDA LEIVA BRAYAN DAVID",
    "telefono": "3013237460",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.yellow,
    "foto":
        "https://estaticos-cdn.prensaiberica.es/clip/3080e2a3-a69a-4db2-a394-667348b5b1a8_alta-libre-aspect-ratio_default_0.jpg",
  },
  {
    "nombre": "CORDOBA MALDONADO NICOL DAYANA",
    "telefono": "573053677841",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.cyan,
    "foto": "https://media.tenor.com/jNaE0MKsTnQAAAAe/mapache-comiendo.png",
  },
  {
    "nombre": "CRUZ FIGUEROA OSCAR MAURICIO",
    "telefono": "3227813912",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.purple,
    "foto":
        "https://estaticos-cdn.prensaiberica.es/clip/3080e2a3-a69a-4db2-a394-667348b5b1a8_alta-libre-aspect-ratio_default_0.jpg",
  },
  {
    "nombre": "CUIDA ESQUIVEL SAMUEL",
    "telefono": "3054302025",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.brown,
    "foto": "https://media.tenor.com/jNaE0MKsTnQAAAAe/mapache-comiendo.png",
  },
  {
    "nombre": "DAZA CAMACHO JOSE DAVID",
    "telefono": "3143688476",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.indigo,
    "foto":
        "https://estaticos-cdn.prensaiberica.es/clip/3080e2a3-a69a-4db2-a394-667348b5b1a8_alta-libre-aspect-ratio_default_0.jpg",
  },
  {
    "nombre": "ESPITIA ARENAS MAICOL STIVEN",
    "telefono": "3123767034",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.pink,
    "foto": "https://media.tenor.com/jNaE0MKsTnQAAAAe/mapache-comiendo.png",
  },
  {
    "nombre": "FERNANDEZ VALLEJO SHARON TATIANA",
    "telefono": "3227658431",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.amber,
    "foto":
        "https://estaticos-cdn.prensaiberica.es/clip/3080e2a3-a69a-4db2-a394-667348b5b1a8_alta-libre-aspect-ratio_default_0.jpg",
  },
  {
    "nombre": "HERRERA MATEUS BRAYAN STIVEN",
    "telefono": "3132860500",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.lime,
    "foto": "https://media.tenor.com/jNaE0MKsTnQAAAAe/mapache-comiendo.png",
  },
  {
    "nombre": "LONDOÑO CARVAJAL JUAN ESTEBAN",
    "telefono": "3505112026",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.greenAccent,
    "foto":
        "https://estaticos-cdn.prensaiberica.es/clip/3080e2a3-a69a-4db2-a394-667348b5b1a8_alta-libre-aspect-ratio_default_0.jpg",
  },
  {
    "nombre": "LOZANO PANESSO EDWARD CAMILO",
    "telefono": "3041381520",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.purpleAccent,
    "foto": "https://media.tenor.com/jNaE0MKsTnQAAAAe/mapache-comiendo.png",
  },
  {
    "nombre": "MADRIGAL TIQUE JOHAN SNEIDER",
    "telefono": "3001597024",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.redAccent,
    "foto":
        "https://estaticos-cdn.prensaiberica.es/clip/3080e2a3-a69a-4db2-a394-667348b5b1a8_alta-libre-aspect-ratio_default_0.jpg",
  },
  {
    "nombre": "MELO CANO CRISTIAN CAMILO",
    "telefono": "3112850538",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.orangeAccent,
    "foto": "https://media.tenor.com/jNaE0MKsTnQAAAAe/mapache-comiendo.png",
  },
  {
    "nombre": "MENESES PARRA DAVID LEONARDO",
    "telefono": "3138292531",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.blueAccent,
    "foto":
        "https://estaticos-cdn.prensaiberica.es/clip/3080e2a3-a69a-4db2-a394-667348b5b1a8_alta-libre-aspect-ratio_default_0.jpg",
  },
  {
    "nombre": "MIRANDA MORENO JOHAN DANIEL",
    "telefono": "3202564149",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.cyanAccent,
    "foto": "https://media.tenor.com/jNaE0MKsTnQAAAAe/mapache-comiendo.png",
  },
  {
    "nombre": "MONTEALEGRE SANCHEZ KEVIN SANTIAGO",
    "telefono": "3209188193",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.tealAccent,
    "foto":
        "https://estaticos-cdn.prensaiberica.es/clip/3080e2a3-a69a-4db2-a394-667348b5b1a8_alta-libre-aspect-ratio_default_0.jpg",
  },
  {
    "nombre": "MONZON AMORTEGUI CRISTIAN DAVID",
    "telefono": "3107883038",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.limeAccent,
    "foto": "https://media.tenor.com/jNaE0MKsTnQAAAAe/mapache-comiendo.png",
  },
  {
    "nombre": "MORALEZ PACHON DAVID SANTIAGO",
    "telefono": "3116658577",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.pinkAccent,
    "foto":
        "https://estaticos-cdn.prensaiberica.es/clip/3080e2a3-a69a-4db2-a394-667348b5b1a8_alta-libre-aspect-ratio_default_0.jpg",
  },
  {
    "nombre": "PACHECO RUEDA KEVIN LEONARDO",
    "telefono": "3156406251",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.amberAccent,
    "foto": "https://media.tenor.com/jNaE0MKsTnQAAAAe/mapache-comiendo.png",
  },
  {
    "nombre": "PINZON HERNANDEZ VALENTINA",
    "telefono": "3115918301",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.deepOrange,
    "foto":
        "https://estaticos-cdn.prensaiberica.es/clip/3080e2a3-a69a-4db2-a394-667348b5b1a8_alta-libre-aspect-ratio_default_0.jpg",
  },
  {
    "nombre": "TORRES TORRES MIGUEL ANGEL",
    "telefono": "3135562730",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.deepPurple,
    "foto":
        "https://estaticos-cdn.prensaiberica.es/clip/3080e2a3-a69a-4db2-a394-667348b5b1a8_alta-libre-aspect-ratio_default_0.jpg",
  },
  {
    "nombre": "TUNJANO CORREA MIGUEL ANGEL",
    "telefono": "3125918289",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.blueGrey,
    "foto":
        "https://estaticos-cdn.prensaiberica.es/clip/3080e2a3-a69a-4db2-a394-667348b5b1a8_alta-libre-aspect-ratio_default_0.jpg",
  },
  {
    "nombre": "VALBUENA MANCERA DIEGO ALEJANDRO",
    "telefono": "3016875644",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.purple,
    "foto":
        "https://estaticos-cdn.prensaiberica.es/clip/3080e2a3-a69a-4db2-a394-667348b5b1a8_alta-libre-aspect-ratio_default_0.jpg",
  },
  {
    "nombre": "VASQUEZ PRADA JOHN MICHAEL",
    "telefono": "3123503334",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.pink,
    "foto": "https://media.tenor.com/jNaE0MKsTnQAAAAe/mapache-comiendo.png",
  },
  {
    "nombre": "VILLAZON MONTERO MARIA ALEJANDRA",
    "telefono": "3172897823",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.teal,
    "foto":
        "https://estaticos-cdn.prensaiberica.es/clip/3080e2a3-a69a-4db2-a394-667348b5b1a8_alta-libre-aspect-ratio_default_0.jpg",
  },
  {
    "nombre": "ZABALETA CALDERON JOSE DAVID",
    "telefono": "3235995105",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.green,
    "foto": "https://media.tenor.com/jNaE0MKsTnQAAAAe/mapache-comiendo.png",
  },
];