import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;
import 'package:modernlogintute/presentation/modules/usuarios/widgets/dialogs.dart';
import 'package:modernlogintute/presentation/routes/route_path.dart';

class CrearUsuarioView extends StatefulWidget {
  const CrearUsuarioView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CrearUsuarioPageState createState() => _CrearUsuarioPageState();
}

class _CrearUsuarioPageState extends State<CrearUsuarioView> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _nameController = TextEditingController();
  final _apellidoController = TextEditingController();
  final _telefonoController = TextEditingController();
  final _emailController = TextEditingController();

  bool _isLoading = false;

  Future<void> _crearUsuario() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true; // Mostrar el indicador de carga
      });

      final response = await http.post(
        Uri.parse('http://45.33.13.164/gateway/api/authentication/sign-up'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: '''{
          "username":"${_usernameController.text}",
          "password":"${_passwordController.text}",
          "name":"${_nameController.text}",
          "apellido":"${_apellidoController.text}",
          "telefono":"${_telefonoController.text}",
          "email":"${_emailController.text}"
        }''',
      );

      setState(() {
        _isLoading = false;
      });

      if (response.statusCode == 201) {
        String res = response.body;
        final responseData = json.decode(res); // Parsear la respuesta JSON
        final username = responseData['username'];
        Dialogs.showSuccessDialog(
            context, username); // Pasar el nombre de usuario al diálogo
      } else if (response.statusCode == 409) {
        Dialogs.showSuccessDialog(context,
            'El nombre del usuario o correo electrónico ya existen, Por favor, intenta con otro');
      } else {
        Dialogs.showConflictDialog(context, 'Hubo un error desconocido');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crear Usuario'),
        backgroundColor: const Color.fromARGB(255, 255, 131, 30),
        centerTitle: true,
        leading: BackButton(
          onPressed: () {
            if (Navigator.of(context).canPop()) {
              Navigator.of(context)
                  .pop(); // Permite regresar a la página anterior
            } else {
              context.go(RoutePath
                  .listarUsuariosScreen); // Navegar a la pantalla de listar usuarios si no hay más páginas en la pila
            }
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              TextFormField(
                controller: _usernameController,
                decoration: const InputDecoration(labelText: 'Username'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingresa un username';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingresa una contraseña';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: 'Nombre'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingresa un nombre';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _apellidoController,
                decoration: const InputDecoration(labelText: 'Apellido'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingresa un apellido';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _telefonoController,
                decoration: const InputDecoration(labelText: 'Teléfono'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingresa un teléfono';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(labelText: 'Email'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingresa un email';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              _isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : ElevatedButton(
                      onPressed: _crearUsuario,
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.orange),
                      ),
                      child: const Text('Crear Usuario'),
                    ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
    _apellidoController.dispose();
    _telefonoController.dispose();
    _emailController.dispose();
    super.dispose();
  }
}
