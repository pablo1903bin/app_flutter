import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CargaCombustiblesPage extends StatelessWidget {
  const CargaCombustiblesPage({super.key});

  void _agregarCarga(BuildContext context) {
    context.go('/agregar_carga');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cargas de Combustible'),
        backgroundColor: const Color.fromARGB(255, 255, 131, 30),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 10, // Aquí puedes poner el número de cargas que tienes
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.local_gas_station),
            title: Text('Carga $index'),
            subtitle: const Text('Detalles de la carga de combustible'),
            onTap: () {
              // Acción al tocar la carga (puedes agregar navegación a detalles de carga)
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _agregarCarga(context),
        child: const Icon(Icons.add),
        backgroundColor: const Color.fromARGB(255, 255, 131, 30),
      ),
    );
  }
}
