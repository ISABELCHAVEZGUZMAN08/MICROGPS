import 'package:flutter/material.dart';
import 'package:flutter_micro1/map_page.dart';
class ChoferForm extends StatelessWidget {
  const ChoferForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registro de Chofer'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Campos del formulario para que el chofer ingrese su información
            TextFormField(
              decoration: const InputDecoration(labelText: 'Nombre'),
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Dirección'),
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Número de teléfono'),
            ),
            // ... Agrega más campos según sea necesario
            ElevatedButton(
              child: const Text('Iniciar viaje'),
              onPressed: () async {
                Navigator.push(
                context,
               MaterialPageRoute(builder: (context) => const MapPage()),
                );
             
              },
            ),
          ],
        ),
      ),
    );
  }

}