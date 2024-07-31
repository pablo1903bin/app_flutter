import 'package:flutter/material.dart';
import 'package:modernlogintute/presentation/modules/usuarios/controllers/usuario_detalle_controller.dart';
import 'package:modernlogintute/presentation/modules/usuarios/controllers/usuarios_controller.dart';
import 'package:provider/provider.dart';

mixin ControllersMixin on StatelessWidget {
  UsuariosController getUsuariosController(BuildContext context) {
    return Provider.of<UsuariosController>(context, listen: false);
  }

  UsuarioDetalleController getUsuarioDetalleController(BuildContext context) {
    return Provider.of<UsuarioDetalleController>(context, listen: false);
  }

  bool checkIfProviderExists<P>(BuildContext context) {
    try {
      Provider.of<P>(context, listen: false);
      return true;
    } catch (e) {
      if (e is ProviderNotFoundException) {
        return false;
      }
      rethrow;
    }
  }
}
