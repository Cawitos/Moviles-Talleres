import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Principal());
}

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "SENA | CEET",
      home: const HomePrincipal(),
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
        foregroundColor: Colors.white,
        backgroundColor: Colors.green,
        title: const Text("SENA | CEET"),
      ),
      body: ListView.builder(
        itemCount: aprendices.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: const Icon(Icons.person),
            title: Text(aprendices[index]['nombre']),
            subtitle: Text(aprendices[index]['telefono']),
          );
        },
      ),
    );
  }
// }

List<Map<String, dynamic>> aprendices = [
  {'nombre': 'AMAYA MARTINEZ FABIAN YESID', 'telefono': '573195638261'},
  {'nombre': 'BELTRAN BUSTOS JULIAN DANIEL', 'telefono': '3226607792'},
  {'nombre': 'BORDA ARDILA RONNY', 'telefono': '3219759220'},
  {'nombre': 'CADENA QUINTERO ALAN JAIR', 'telefono': '5714886956'},
  {'nombre': 'CAMACHO FERRUCHO CARLOS EDUARDO', 'telefono': '3143808047'},
  {'nombre': 'CASTAÑEDA LEIVA BRAYAN DAVID', 'telefono': '3013237460'},
  {'nombre': 'CORDOBA MALDONADO NICOL DAYANA', 'telefono': '573053677841'},
  {'nombre': 'CRUZ FIGUEROA OSCAR MAURICIO', 'telefono': '3227813912'},
  {'nombre': 'CUIDA ESQUIVEL SAMUEL', 'telefono': '3054302025'},
  {'nombre': 'DAZA CAMACHO JOSE DAVID', 'telefono': '3143688476'},
  {'nombre': 'ESPITIA ARENAS MAICOL STIVEN', 'telefono': '3123767034'},
  {'nombre': 'FERNANDEZ VALLEJO SHARON TATIANA', 'telefono': '3227658431'},
  {'nombre': 'HERRERA MATEUS BRAYAN STIVEN', 'telefono': '3132860500'},
  {'nombre': 'LONDOÑO CARVAJAL JUAN ESTEBAN', 'telefono': '3505112026'},
  {'nombre': 'LOZANO PANESSO EDWARD CAMILO', 'telefono': '3041381520'},
  {'nombre': 'MADRIGAL TIQUE JOHAN SNEIDER', 'telefono': '3001597024'},
  {'nombre': 'MELO CANO CRISTIAN CAMILO', 'telefono': '3112850538'},
  {'nombre': 'MENESES PARRA DAVID LEONARDO', 'telefono': '3138292531'},
  {'nombre': 'MIRANDA MORENO JOHAN DANIEL', 'telefono': '3202564149'},
  {'nombre': 'MONTEALEGRE SANCHEZ KEVIN SANTIAGO', 'telefono': '3209188193'},
  {'nombre': 'MONZON AMORTEGUI CRISTIAN DAVID', 'telefono': '3107883038'},
  {'nombre': 'MORALEZ PACHON DAVID SANTIAGO', 'telefono': '3116658577'},
  {'nombre': 'PACHECO RUEDA KEVIN LEONARDO', 'telefono': '3156406251'},
  {'nombre': 'PINZON HERNANDEZ VALENTINA', 'telefono': '3115918301'},
  {'nombre': 'TORRES TORRES MIGUEL ANGEL', 'telefono': '3135562730'},
  {'nombre': 'TUNJANO CORREA MIGUEL ANGEL', 'telefono': '3125918289'},
  {'nombre': 'VALBUENA MANCERA DIEGO ALEJANDRO', 'telefono': '3016875644'},
  {'nombre': 'VASQUEZ PRADA JOHN MICHAEL', 'telefono': '3123503334'},
  {'nombre': 'VILLAZON MONTERO MARIA ALEJANDRA', 'telefono': '3172897823'},
  {'nombre': 'ZABALETA CALDERON JOSE DAVID', 'telefono': '3235995105'},
];
}