import 'dart:js_util';
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
      title: "SENA | CEET",
      home: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue[900],
          title: Text("Información Personal"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Image(
                image: NetworkImage("https://media.tenor.com/jNaE0MKsTnQAAAAe/mapache-comiendo.png")
              ),
              ListTile(
                title: Text("CARLOS EDUARDO"),
                subtitle: Text("Nombres"),
                leading: Icon(Icons.one_k_outlined),
              ),
              Divider(),
              ListTile(
                title: Text("CAMACHO FERRUCHO"),
                subtitle: Text("Apellidos"),
                leading: Icon(Icons.brightness_1_rounded),
              ),
              Divider(),
              ListTile(
                title: Text("314 3808047"),
                subtitle: Text("Celular"),
                leading: Icon(Icons.phone_callback),
              ),
              Divider(),
              ListTile(
                title: Text("DISTRITO CAPITAL"),
                subtitle: Text("Regional"),
                leading: Icon(Icons.location_city),
              ),
              Divider(),
              ListTile(
                title: Text("CEET"),
                subtitle: Text("Centro de Formación"),
                leading: Icon(Icons.location_on),
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}