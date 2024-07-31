import 'package:flutter/material.dart';
import 'package:modernlogintute/presentation/modules/home/widgets/drawer_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Usuarios'),
        // Fondo del AppBar
        backgroundColor: const Color.fromARGB(255, 255, 131, 30),
        centerTitle: true,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                print('Desplegar drawer');
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        // Íconos a la derecha del AppBar
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Acción a realizar cuando se presiona el botón de búsqueda.
              print('Icono de búsqueda presionado... ');
            },
          ),
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Acción a realizar cuando se presiona el botón de notificaciones.
              print('Icono de notificaciones presionado');
            },
          ),
        ],
      ),
      // Drawer añadido al Scaffold
      drawer: const AppDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Imagen de encabezado
            const SizedBox(height: 20),
            // Mensaje de bienvenida
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                '¡Bienvenido a la App de Registro de Usuarios!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
            const SizedBox(height: 10),
            // Descripción
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Aquí podrás gestionar y registrar nuevos usuarios de forma fácil y rápida. Utiliza el menú lateral para navegar por las diferentes secciones de la aplicación.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Elementos decorativos (opcional)
            Center(
              child: Column(
                children: [
                  Icon(Icons.person_add,
                      size: 80, color: Theme.of(context).primaryColor),
                  const SizedBox(height: 10),
                  Text(
                    'Empieza a registrar usuarios ahora!',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
