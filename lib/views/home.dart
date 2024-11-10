import 'package:flutter/material.dart';
import 'package:alquiler_autos/views/detalles.dart';
import 'package:alquiler_autos/views/perfil.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 1;
  
  static const List<Map<String, String>> cars = [
    {'name': 'Toyota Corolla', 'year': '2022', 'price': '99.99'},
    {'name': 'Nissan Sentra', 'year': '2021', 'price': '89.99'},
    {'name': 'Ford Mustang', 'year': '2023', 'price': '199.99'},
    {'name': 'Chevrolet Camaro', 'year': '2020', 'price': '150.00'},
  ];

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);

    switch (index) {
      case 0:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const Home()),
        );
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Perfil()),
        );
    }
  }

  void _navigateToDetails() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Detalles()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Column(
        children: [
          _buildSearchBar(),
          _buildCarList(),
        ],
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      leading: const BackButton(color: Colors.black),
      title: const Text(
        'Alquiler de Vehículos',
        style: TextStyle(color: Colors.black),
      ),
      backgroundColor: const Color.fromARGB(255, 38, 108, 199),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
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
    );
  }

  Widget _buildCarList() {
    return Expanded(
      child: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (context, index) => _buildCarItem(
          cars[index]['name']!,
          cars[index]['year']!,
          cars[index]['price']!,
        ),
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
          child: const Icon(
            Icons.directions_car,
            color: Color.fromARGB(255, 30, 112, 236),
          ),
        ),
        title: Text(
          name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          'Año: $year - \$$price/día',
          style: TextStyle(color: Colors.grey[600]),
        ),
        trailing: const Icon(Icons.chevron_right, color: Colors.grey),
        onTap: _navigateToDetails,
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      selectedItemColor: const Color.fromARGB(255, 115, 206, 229),
      unselectedItemColor: Colors.grey,
      onTap: _onItemTapped,
      items: const [
        BottomNavigationBarItem( // Corregido aquí
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home),
          label: 'Inicio',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.directions_car_outlined),
          activeIcon: Icon(Icons.directions_car),
          label: 'Alquiler',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          activeIcon: Icon(Icons.person),
          label: 'Perfil',
        ),
      ],
    );
  }
}