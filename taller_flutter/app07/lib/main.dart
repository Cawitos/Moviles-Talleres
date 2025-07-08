import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Principal());  
}

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SENA | CEET",
      debugShowCheckedModeBanner: false,
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
        foregroundColor: Colors.white,
        backgroundColor: Colors.green,
        title: Text("FICHA | 2925960"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.builder(          
          itemCount: aprendices.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text(aprendices[index]),
              ),
            );
          },
        ),
      ),      
    );
  }
}

List<String> aprendices = [
  "AMAYA MARTINEZ", "FABIAN YESID BELTRAN BUSTOS", "JULIAN DANIEL BORDA ARDILA",
  "RONNY CADENA QUINTERO", "ALAN JAIR CAMACHO FERRUCHO", "CARLOS EDUARDO CASTAÑEDA LEIVA",
  "BRAYAN DAVID CORDOBA MALDONADO", "NICOL DAYANA CRUZ FIGUEROA", "OSCAR MAURICIO CUIDA ESQUIVEL",
  "SAMUEL DAZA CAMACHO", "JOSE DAVID ESPITIA ARENAS", "MAICOL STIVEN FERNANDEZ VALLEJO",
  "SHARON TATIANA HERRERA MATEUS", "BRAYAN STIVEN LONDOÑO CARVAJAL", "JUAN ESTEBAN LOZANO PANESSO",
  "EDWARD CAMILO MADRIGAL TIQUE", "JOHAN SNEIDER MELO CANO", "CRISTIAN CAMILO MENESES PARRA",
  "DAVID LEONARDO MIRANDA MORENO", "JOHAN DANIEL MONTEALEGRE SANCHEZ", "KEVIN SANTIAGO MONZON AMORTEGUI",
  "CRISTIAN DAVID MORALEZ PACHON", "DAVID SANTIAGO PACHECO RUEDA", "KEVIN LEONARDO PINZON HERNANDEZ",
  "VALENTINA TORRES TORRES", "MIGUEL ANGEL TUNJANO CORREA", "MIGUEL ANGEL VALBUENA MANCERA",
  "DIEGO ALEJANDRO VASQUEZ PRADA", "JOHN MICHAEL VILLAZON MONTERO", "MARIA ALEJANDRA ZABALETA CALDERON",
  "JOSE DAVID"
];