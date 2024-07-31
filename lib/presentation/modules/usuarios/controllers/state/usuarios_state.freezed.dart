// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'usuarios_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UsuariosState {
  String get claveUsuario => throw _privateConstructorUsedError;
  String get nombre => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get titulo => throw _privateConstructorUsedError;
  List<Permiso> get permisos => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UsuariosStateCopyWith<UsuariosState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsuariosStateCopyWith<$Res> {
  factory $UsuariosStateCopyWith(
          UsuariosState value, $Res Function(UsuariosState) then) =
      _$UsuariosStateCopyWithImpl<$Res, UsuariosState>;
  @useResult
  $Res call(
      {String claveUsuario,
      String nombre,
      String password,
      String titulo,
      List<Permiso> permisos});
}

/// @nodoc
class _$UsuariosStateCopyWithImpl<$Res, $Val extends UsuariosState>
    implements $UsuariosStateCopyWith<$Res> {
  _$UsuariosStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? claveUsuario = null,
    Object? nombre = null,
    Object? password = null,
    Object? titulo = null,
    Object? permisos = null,
  }) {
    return _then(_value.copyWith(
      claveUsuario: null == claveUsuario
          ? _value.claveUsuario
          : claveUsuario // ignore: cast_nullable_to_non_nullable
              as String,
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      titulo: null == titulo
          ? _value.titulo
          : titulo // ignore: cast_nullable_to_non_nullable
              as String,
      permisos: null == permisos
          ? _value.permisos
          : permisos // ignore: cast_nullable_to_non_nullable
              as List<Permiso>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UsuariosStateImplCopyWith<$Res>
    implements $UsuariosStateCopyWith<$Res> {
  factory _$$UsuariosStateImplCopyWith(
          _$UsuariosStateImpl value, $Res Function(_$UsuariosStateImpl) then) =
      __$$UsuariosStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String claveUsuario,
      String nombre,
      String password,
      String titulo,
      List<Permiso> permisos});
}

/// @nodoc
class __$$UsuariosStateImplCopyWithImpl<$Res>
    extends _$UsuariosStateCopyWithImpl<$Res, _$UsuariosStateImpl>
    implements _$$UsuariosStateImplCopyWith<$Res> {
  __$$UsuariosStateImplCopyWithImpl(
      _$UsuariosStateImpl _value, $Res Function(_$UsuariosStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? claveUsuario = null,
    Object? nombre = null,
    Object? password = null,
    Object? titulo = null,
    Object? permisos = null,
  }) {
    return _then(_$UsuariosStateImpl(
      null == claveUsuario
          ? _value.claveUsuario
          : claveUsuario // ignore: cast_nullable_to_non_nullable
              as String,
      null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      titulo: null == titulo
          ? _value.titulo
          : titulo // ignore: cast_nullable_to_non_nullable
              as String,
      permisos: null == permisos
          ? _value._permisos
          : permisos // ignore: cast_nullable_to_non_nullable
              as List<Permiso>,
    ));
  }
}

/// @nodoc

class _$UsuariosStateImpl implements _UsuariosState {
  _$UsuariosStateImpl(this.claveUsuario, this.nombre, this.password,
      {this.titulo = "Carnal", final List<Permiso> permisos = const []})
      : _permisos = permisos;

  @override
  final String claveUsuario;
  @override
  final String nombre;
  @override
  final String password;
  @override
  @JsonKey()
  final String titulo;
  final List<Permiso> _permisos;
  @override
  @JsonKey()
  List<Permiso> get permisos {
    if (_permisos is EqualUnmodifiableListView) return _permisos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_permisos);
  }

  @override
  String toString() {
    return 'UsuariosState(claveUsuario: $claveUsuario, nombre: $nombre, password: $password, titulo: $titulo, permisos: $permisos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsuariosStateImpl &&
            (identical(other.claveUsuario, claveUsuario) ||
                other.claveUsuario == claveUsuario) &&
            (identical(other.nombre, nombre) || other.nombre == nombre) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.titulo, titulo) || other.titulo == titulo) &&
            const DeepCollectionEquality().equals(other._permisos, _permisos));
  }

  @override
  int get hashCode => Object.hash(runtimeType, claveUsuario, nombre, password,
      titulo, const DeepCollectionEquality().hash(_permisos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsuariosStateImplCopyWith<_$UsuariosStateImpl> get copyWith =>
      __$$UsuariosStateImplCopyWithImpl<_$UsuariosStateImpl>(this, _$identity);
}

abstract class _UsuariosState implements UsuariosState {
  factory _UsuariosState(
      final String claveUsuario, final String nombre, final String password,
      {final String titulo,
      final List<Permiso> permisos}) = _$UsuariosStateImpl;

  @override
  String get claveUsuario;
  @override
  String get nombre;
  @override
  String get password;
  @override
  String get titulo;
  @override
  List<Permiso> get permisos;
  @override
  @JsonKey(ignore: true)
  _$$UsuariosStateImplCopyWith<_$UsuariosStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Permiso {
  int get id => throw _privateConstructorUsedError;
  String get nombre => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PermisoCopyWith<Permiso> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermisoCopyWith<$Res> {
  factory $PermisoCopyWith(Permiso value, $Res Function(Permiso) then) =
      _$PermisoCopyWithImpl<$Res, Permiso>;
  @useResult
  $Res call({int id, String nombre});
}

/// @nodoc
class _$PermisoCopyWithImpl<$Res, $Val extends Permiso>
    implements $PermisoCopyWith<$Res> {
  _$PermisoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nombre = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PermisoImplCopyWith<$Res> implements $PermisoCopyWith<$Res> {
  factory _$$PermisoImplCopyWith(
          _$PermisoImpl value, $Res Function(_$PermisoImpl) then) =
      __$$PermisoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String nombre});
}

/// @nodoc
class __$$PermisoImplCopyWithImpl<$Res>
    extends _$PermisoCopyWithImpl<$Res, _$PermisoImpl>
    implements _$$PermisoImplCopyWith<$Res> {
  __$$PermisoImplCopyWithImpl(
      _$PermisoImpl _value, $Res Function(_$PermisoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nombre = null,
  }) {
    return _then(_$PermisoImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PermisoImpl implements _Permiso {
  _$PermisoImpl(this.id, this.nombre);

  @override
  final int id;
  @override
  final String nombre;

  @override
  String toString() {
    return 'Permiso(id: $id, nombre: $nombre)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PermisoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nombre, nombre) || other.nombre == nombre));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, nombre);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PermisoImplCopyWith<_$PermisoImpl> get copyWith =>
      __$$PermisoImplCopyWithImpl<_$PermisoImpl>(this, _$identity);
}

abstract class _Permiso implements Permiso {
  factory _Permiso(final int id, final String nombre) = _$PermisoImpl;

  @override
  int get id;
  @override
  String get nombre;
  @override
  @JsonKey(ignore: true)
  _$$PermisoImplCopyWith<_$PermisoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
