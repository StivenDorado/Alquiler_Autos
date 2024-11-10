import 'package:flutter/material.dart';

class Pago extends StatelessWidget {
  const Pago({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 38, 108, 199),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'Medio de Pago',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
      ),
      body: Container(
        color: Colors.pink[50], // Fondo rosa claro
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Tarjeta de Crédito o Débito
              Card(
                elevation: 0,
                child: ListTile(
                  leading: Icon(
                    Icons.credit_card,
                    color: Color.fromARGB(255, 115, 206, 229),
                    size: 28,
                  ),
                  title: const Text(
                    'Tarjeta de Crédito o Débito',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onTap: () {
                    // Implementar selección de tarjeta
                  },
                ),
              ),
              
              const SizedBox(height: 8),
              
              // PayPal
              Card(
                elevation: 0,
                child: ListTile(
                  leading: Icon(
                    Icons.payment,
                    color: Color.fromARGB(255, 115, 206, 229),
                    size: 28,
                  ),
                  title: const Text(
                    'PayPal',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onTap: () {
                    // Implementar pago con PayPal
                  },
                ),
              ),
              
              const SizedBox(height: 8),
              
              // Transferencia Bancaria
              Card(
                elevation: 0,
                child: ListTile(
                  leading: Icon(
                    Icons.account_balance,
                    color: Color.fromARGB(255, 115, 206, 229),
                    size: 28,
                  ),
                  title: const Text(
                    'Transferencia Bancaria',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onTap: () {
                    // Implementar transferencia bancaria
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}