import 'package:alquiler_autos/views/detalles.dart';
import 'package:alquiler_autos/views/registrarse.dart';
import 'package:alquiler_autos/views/login.dart';
import 'package:alquiler_autos/views/home.dart';
import 'package:alquiler_autos/views/perfil.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(body: Detalles()),
    );
  }
}
