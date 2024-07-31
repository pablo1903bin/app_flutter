

import 'package:freezed_annotation/freezed_annotation.dart';

part 'usuarios_state.freezed.dart';

@freezed
class UsuariosState with _$UsuariosState {

  factory UsuariosState(
    String claveUsuario,
    String nombre,
    String password,
    {
      @Default("Carnal") String titulo,
      @Default([]) List<Permiso> permisos
    }

  ) = _UsuariosState;
}

@freezed
class Permiso with _$Permiso {

  factory Permiso(
    int id,
    String nombre
  ) = _Permiso;
}