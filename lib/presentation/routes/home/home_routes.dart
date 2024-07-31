import 'package:go_router/go_router.dart';
import 'package:modernlogintute/presentation/modules/home/views/home_page.dart';
import 'package:modernlogintute/presentation/routes/route_path.dart';

class HomeRoutes {
  static GoRoute get home {
    return GoRoute(
      path: RoutePath.homeScreen,
      builder: (context, state) {
        return const HomePage();
      },
    );
  }
}
