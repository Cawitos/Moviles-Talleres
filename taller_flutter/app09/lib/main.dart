import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Principal());
}

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FICHA | 2925960", // Cambié "SENA | CEET" por "FICHA | 2925960"
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
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        title: Text("FICHA | 2925960"), // Cambié el título aquí también
      ),
      body: ListView.builder(
        itemCount: aprendices.length, // Cambié el nombre de la lista
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            trailing: Icon(Icons.arrow_circle_right_outlined),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                aprendices[index]["foto"],
              ), // Dejé el espacio para la foto
            ),
            title: Text(aprendices[index]["nombre"]),
            subtitle: Text(
              "${aprendices[index]["telefono"]} - ${aprendices[index]["ubicacion"]}",
            ),
            onTap: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return Scaffold(
                    appBar: AppBar(
                      backgroundColor:
                          aprendices[index]["color_distintivo"], // Color personalizado
                      title: Text(aprendices[index]["nombre"]),
                    ),
                    body: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ListView(
                        children: [
                          CircleAvatar(
                            radius: 100,
                            backgroundImage: NetworkImage(
                              aprendices[index]["foto"],
                            ), // Foto grande
                          ),
                          Text("Teléfono: ${aprendices[index]["telefono"]}"),
                          Divider(),
                          Text("Ubicación: ${aprendices[index]["ubicacion"]}"),
                          Divider(),
                          Text(
                            "Fecha de inscripción: ${aprendices[index]["fecha_inscripcion"]}",
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          );
        },
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
    "foto": "https://via.placeholder.com/150",
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
    "foto": "https://via.placeholder.com/150",
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
    "foto": "https://via.placeholder.com/150",
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
    "foto": "https://via.placeholder.com/150",
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
    "foto": "https://via.placeholder.com/150",
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
    "foto": "https://via.placeholder.com/150",
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
    "foto": "https://via.placeholder.com/150",
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
    "foto": "https://via.placeholder.com/150",
  },
];