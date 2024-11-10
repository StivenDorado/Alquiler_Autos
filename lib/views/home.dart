import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        title: const Text(
          'Alquiler de Vehículos',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color.fromARGB(255, 38, 108, 199),
      ),
      body: Column(
        children: [
          // Barra de búsqueda
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Buscar vehículo',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey[100],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          // Lista de vehículos
          Expanded(
            child: ListView(
              children: [
                _buildCarItem('Toyota Corolla', '2022', '99.99'),
                _buildCarItem('Nissan Sentra', '2021', '89.99'),
                _buildCarItem('Ford Mustang', '2023', '199.99'),
                _buildCarItem('Chevrolet Camaro', '2020', '150.00'),
              ],
            ),
          ),
          // Barra de navegación inferior
          BottomNavigationBar(
            selectedItemColor: Color.fromARGB(255, 115, 206, 229),
            unselectedItemColor: Colors.grey,
            currentIndex: 1,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Inicio',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.directions_car_outlined),
                label: 'Alquiler',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: 'Usuario',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCarItem(String name, String year, String price) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: ListTile(
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 228, 252, 245),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(
            Icons.directions_car,
            color: Color.fromARGB(255, 30, 112, 236),
          ),
        ),
        title: Text(
          name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          'Año: $year - \$$price/día',
          style: TextStyle(
            color: Colors.grey[600],
          ),
        ),
        trailing: const Icon(
          Icons.chevron_right,
          color: Colors.grey,
        ),
        onTap: () {
          // Manejar la selección del vehículo
        },
      ),
    );
  }
}
