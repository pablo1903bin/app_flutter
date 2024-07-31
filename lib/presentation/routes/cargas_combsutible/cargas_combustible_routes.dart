import 'package:go_router/go_router.dart';
import 'package:modernlogintute/presentation/modules/cargas_combustible/views/cargas_conbustible_page.dart';

class CargasCombustiblesRoutes {
  static GoRoute get cargasCombustible {
    return GoRoute(
      path: '/cargas_comb',
      builder: (context, state) {
        return const CargaCombustiblesPage();
      },
    );
  }
}
