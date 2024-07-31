import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:modernlogintute/data/auth_provider.dart';
import 'package:modernlogintute/presentation/mixin/controllers_mixin.dart';
import 'package:modernlogintute/presentation/modules/usuarios/controllers/usuarios_controller.dart';
import 'package:modernlogintute/presentation/routes/route_path.dart';
import 'package:provider/provider.dart';

class UserDetailsScreen extends StatelessWidget with ControllersMixin {
  const UserDetailsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<AuthProvider>(context);
    final controller = getUsuariosController(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalles del Usuario'),
        leading: BackButton(
          onPressed: () {
            if (Navigator.of(context).canPop()) {
              Navigator.of(context)
                  .pop(); // Permite regresar a la página anterior
            } else {
              context.go(RoutePath
                  .homeScreen); // Navegar a la pantalla principal si no hay más páginas en la pila
            }
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Username: ${user.username}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 8),
            Text(
              'Nombre: ${user.username}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 8),
            Text(
              'Email: ${user.email}',
              style: const TextStyle(fontSize: 18),
            ),
            Text("Usuario: ${controller.state.titulo} "),
            Consumer<UsuariosController>(builder: (context, controller, child) {
              //Text(controller.getUserName());
              return Column(
                children: [
                  Text(controller.getUserName()),
                  Text(" ${controller.state.permisos.first.nombre}")
                ],
              );
            })
          ],
        ),
      ),
    );
  }
}
