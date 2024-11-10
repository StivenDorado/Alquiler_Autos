import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  const Perfil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 30, 112, 236),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'Perfil',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.network(
                  "https://doblaje.fandom.com/es/wiki/Sydney_Sweeney",
                  width: 120, 
                  height: 160,
                ),
              ),
            ),
            const SizedBox(height: 16),
            // Nombre de usuario
            const Text(
              'Nombre de Usuario',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            // Correo electrónico
            Text(
              'correo@ejemplo.com',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(height: 20),
            // Número de licencia
            ListTile(
              leading: Icon(Icons.card_membership, color: Colors.grey[600]),
              title: const Text('Número de licencia'),
              subtitle: const Text('123456789'),
            ),
            const Divider(),
            // Cambiar contraseña
            ListTile(
              leading: Icon(Icons.lock, color: Colors.grey[600]),
              title: const Text('Cambiar contraseña'),
              onTap: () {
                // Implementar cambio de contraseña
              },
            ),
            const Divider(),
            // Revisar alquileres
            ListTile(
              leading: Icon(Icons.search, color: Color.fromARGB(255, 115, 206, 229)),
              title: Text(
                'Revisar Alquileres',
                style: TextStyle(color: Color.fromARGB(255, 115, 206, 229)),
              ),
              onTap: () {
                // Implementar revisión de alquileres
              },
            ),
          ],
        ),
      ),
    );
  }
}