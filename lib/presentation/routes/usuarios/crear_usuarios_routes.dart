import 'package:go_router/go_router.dart';
import 'package:modernlogintute/presentation/modules/usuarios/views/crear_usuario_view.dart';
import 'package:modernlogintute/presentation/routes/route_path.dart';

class CrearUsuariosRoutes {
  static GoRoute get crearUsuario {
    return GoRoute(
      path: RoutePath.crearUsuarios,
      builder: (context, state) {
        return const CrearUsuarioView();
      },
    );
  }
}
