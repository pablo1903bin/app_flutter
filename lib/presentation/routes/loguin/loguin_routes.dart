import 'package:go_router/go_router.dart';
import 'package:modernlogintute/presentation/modules/loguin/views/login_page.dart';
import 'package:modernlogintute/presentation/routes/route_path.dart';

class LoguinRoutes {
  static GoRoute get loguin {
    return GoRoute(
      path: RoutePath.inicial,
      builder: (context, state) {
        return LoginPage();
      },
    );
  }
}
