import 'package:modernlogintute/presentation/modules/usuarios/controllers/state/usuarios_state.dart';
import 'package:modernlogintute/presentation/state/state_notifier.dart';

//Esto se llama desde las vistas
class UsuariosController extends StateNotifier<UsuariosState> {
  UsuariosController(super.key); // Inicializa el estado.

  String getUserName() {
    return state.claveUsuario;
  }

  void cambiarNombre() {
    //changeState("CMENDOZA");

    print("Usuarioactual: $state");

    notifica(state
        .copyWith(claveUsuario: "CMENDOZA", permisos: [Permiso(2, "Admin")]));

    print("Usuario Nuevo: $state");
  }
}
