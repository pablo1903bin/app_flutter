import 'package:flutter/material.dart';
import 'package:modernlogintute/presentation/modules/usuarios/controllers/state/usuarios_state.dart';
import 'package:modernlogintute/presentation/modules/usuarios/controllers/usuarios_controller.dart';
import 'package:provider/provider.dart';

import 'package:modernlogintute/presentation/routes/routes.dart';
import 'package:modernlogintute/data/auth_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(
            create: (_) => UsuariosController(UsuariosState(
                "ACRUZ", "ALONSO CRUZ", "Temporal01",
                permisos: [Permiso(1, "anonimo")],
                titulo:
                    "Mr"))), // Proveedor para UsuariosController con estado inicial
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget with Routes {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
