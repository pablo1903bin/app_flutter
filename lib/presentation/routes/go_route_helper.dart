import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:modernlogintute/presentation/state/state_notifier.dart';
import 'package:provider/provider.dart';

class GoRouteHelper {
  // Método goRoute
  static GoRoute goRoute<T extends ChangeNotifier>(
      String route, Widget Function() screen,
      {T Function()? controller}) {
    return GoRoute(
      // Asigna un nombre a la ruta usando el método toName
      name: toName(route),
      // Define el path de la ruta
      path: route,
      // Define el builder de la ruta que construirá el widget asociado a esta ruta
      builder: controller == null
          // Si no hay controlador, simplemente crea el widget
          ? (_, __) => screen()
          // Si hay un controlador, envuelve el widget con el controlador
          : (context, state) {
              return routeController(screen, controller);
            },
    );
  }

  // Método que envuelve el widget con un ChangeNotifierProvider
  static ChangeNotifierProvider<T> routeController<T extends ChangeNotifier>(
      Widget Function() crear, T Function() controller) {
    return ChangeNotifierProvider<T>(
      // Crea una instancia del controlador
      create: (context) => controller(),
      // Construye el widget hijo
      child: crear(),
    );
  }

  static GoRoute goRouteMulti(String route, Widget Function() crear,
      List<ChangeNotifierProvider> controllers) {
    return GoRoute(
      name: toName(route),
      path: route,
      builder: (context, state) {
        return routeControllers(crear, controllers);
      },
    );
  }

  static MultiProvider routeControllers(
      Widget Function() crear, List<ChangeNotifierProvider> controllers) {
    return MultiProvider(
        providers: controllers,
        child: Consumer<I18nProvider>(builder: (___, _, __) => crear()));
  }

  static ChangeNotifierProvider c<T extends ChangeNotifier>(
      T Function() crear) {
    return ChangeNotifierProvider<T>(create: (context) => crear());
  }

  // Método que convierte una ruta en un nombre
  static String toName(String v) {
    return v.replaceAll("/", "");
  }
}

class I18nProvider extends StateNotifier<String> {
  I18nProvider(super.state);
}
