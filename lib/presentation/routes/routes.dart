import 'package:go_router/go_router.dart';
import 'package:modernlogintute/presentation/modules/usuarios/controllers/state/usuarios_state.dart';
import 'package:modernlogintute/presentation/modules/usuarios/controllers/usuarios_controller.dart';
import 'package:modernlogintute/presentation/modules/usuarios/views/usuarios_view.dart';
import 'package:modernlogintute/presentation/routes/cargas_combsutible/cargas_combustible_routes.dart';
import 'package:modernlogintute/presentation/routes/go_route_helper.dart';
import 'package:modernlogintute/presentation/routes/home/home_routes.dart';
import 'package:modernlogintute/presentation/routes/loguin/loguin_routes.dart';
import 'package:modernlogintute/presentation/routes/route_path.dart';
import 'package:modernlogintute/presentation/routes/usuarios/usuarios_routes.dart';

mixin Routes {
  final GoRouter _router = GoRouter(
    initialLocation: RoutePath.inicial, // Ubicación inicial de la aplicación
    routes: [
      LoguinRoutes.loguin,
      HomeRoutes.home,
      UsuariosRoutes.usuarios,
      UsuariosRoutes.userDetails,
      UsuariosRoutes.crearUsuario,
      CargasCombustiblesRoutes.cargasCombustible,
      GoRouteHelper.goRoute<UsuariosController>(
          //Mi ruta en cadena
          RoutePath.listarUsuariosScreen,
          () => const UsuariosView(), //-->  la vista que se renderizara
          //Funcion que creara el widget
          controller: () => UsuariosController(UsuariosState(
              //crea una instancia de Usuariosontroller con un estado inicial.
              "ACRUZ",
              "ALONSO CRUZ",
              "Temporal01",
              permisos: [Permiso(1, "anonimo")],
              titulo: "Mr"))),
    ],
  );

  GoRouter get router => _router; // Getter para obtener el enrutador
}
