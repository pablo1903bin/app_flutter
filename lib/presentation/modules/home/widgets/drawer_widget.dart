import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:modernlogintute/presentation/routes/route_path.dart';
import 'package:provider/provider.dart';
import 'package:modernlogintute/data/auth_provider.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);

    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 255, 160, 82),
            ),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      context.go(RoutePath.detallesDeUsuario);
                    },
                    child: const CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    authProvider.username ?? 'Nombre del Usuario',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                  Text(
                    authProvider.email ?? 'usuario@correo.com',
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home, color: Theme.of(context).primaryColor),
            title: Text(
              'Inicio',
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
            onTap: () {
              Navigator.pop(context);
              context.go(RoutePath.homeScreen);
            },
          ),
          ListTile(
            leading: Icon(Icons.person, color: Theme.of(context).primaryColor),
            title: Text(
              'Usuarios',
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
            onTap: () {
              print("Vamos al Home");
              Navigator.pop(context);
              // Redirige a la pantalla principal usando go_router
              context.go(RoutePath
                  .listarUsuariosScreen); // Navegar a la pantalla de listar usuarios
            },
          ),
          ListTile(
            leading: Icon(Icons.person, color: Theme.of(context).primaryColor),
            title: Text(
              'Detalles de usuario',
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
            onTap: () {
              print("Vamos al Home");
              Navigator.pop(context);
              // Redirige a la pantalla principal usando go_router
              context.go(RoutePath
                  .detallesDeUsuario); // Navegar a la pantalla de listar usuarios
            },
          ),
          ListTile(
            leading:
                Icon(Icons.settings, color: Theme.of(context).primaryColor),
            title: Text(
              'Configuraciones',
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
            onTap: () {
              Navigator.pop(context);
              // Añadir la lógica para navegar a la página de configuraciones
            },
          ),
          const Divider(),
          ListTile(
            leading: Icon(Icons.logout, color: Theme.of(context).primaryColor),
            title: Text(
              'Cerrar sesión',
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
            onTap: () {
              Navigator.pop(context);
              // Añade la lógica para cerrar sesión
              Provider.of<AuthProvider>(context, listen: false).clearAuthData();
              context.go(RoutePath.inicial); // Redirige a la pantalla de login
            },
          ),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.info, color: Color.fromARGB(255, 101, 208, 35)),
                SizedBox(width: 8),
                Text(
                  'Versión 1.0.0',
                  style: TextStyle(
                    color: Color.fromARGB(255, 18, 90, 138),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
