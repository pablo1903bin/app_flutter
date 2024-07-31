import 'package:go_router/go_router.dart';
import 'package:modernlogintute/presentation/modules/usuarios/views/crear_usuario_view.dart';
import 'package:modernlogintute/presentation/modules/usuarios/views/user_details_view.dart';
import 'package:modernlogintute/presentation/modules/usuarios/views/usuarios_view.dart';
import 'package:modernlogintute/presentation/routes/route_path.dart';

class UsuariosRoutes {
  //
  static GoRoute get usuarios {
    return GoRoute(
      path: RoutePath.listarUsuarios,
      builder: (context, state) {
        return const UsuariosView();
      },
    );
  }

//
  static GoRoute get userDetails {
    return GoRoute(
        path: RoutePath.detallesDeUsuario,
        builder: (context, state) {
          return const UserDetailsScreen();
        });
  }

//
  static GoRoute get crearUsuario {
    return GoRoute(
      path: RoutePath.crearUsuarios,
      builder: (context, state) {
        return const CrearUsuarioView();
      },
    );
  }
}
