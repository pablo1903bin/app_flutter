import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:modernlogintute/data/auth_provider.dart';
import 'package:modernlogintute/presentation/modules/loguin/widgets/my_button.dart';
import 'package:modernlogintute/presentation/modules/loguin/widgets/my_textfield.dart';
import 'package:modernlogintute/presentation/routes/route_path.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginPage({super.key});

  // Método para iniciar sesión
  void signUserIn(BuildContext context) async {
    // Muestra un indicador de carga personalizado mientras se realiza la petición
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.orange),
        ),
      ),
    );

    // URL de la API loguin
    const String apiUrl =
        'http://45.33.13.164/gateway/api/authentication/sign-in';

    // Datos del cuerpo de la petición
    final Map<String, String> body = {
      'username': usernameController.text,
      'password': passwordController.text,
    };

    try {
      // Realiza la petición POST
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: {'Content-Type': 'application/json'},
        body: json.encode(body),
      );

      // Verifica si la respuesta es exitosa
      if (response.statusCode == 200) {
        // Decodifica la respuesta
        final Map<String, dynamic> responseData = json.decode(response.body);

        // Obtiene el token y los detalles del usuario del cuerpo de la respuesta
        final String token = responseData['token'];
        final String username = responseData['username'];
        final String email = responseData['email'];

        // Guarda el token y los detalles del usuario usando el provider
        Provider.of<AuthProvider>(context, listen: false)
            .setAuthData(token, username, email);

        // Redirige a la pantalla principal usando go_router
        context.go(RoutePath.homeScreen);

        // Cierra el indicador de carga
        Navigator.pop(context);
      } else {
        // Muestra un mensaje de error si la respuesta no es exitosa
        Navigator.pop(context); // Cierra el indicador de carga
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Inicio de sesión fallido'),
            content: const Text(
              'Parece que tu nombre de usuario o contraseña no son correctos. '
              'Por favor, revisa tus credenciales e inténtalo nuevamente. '
              'Si has olvidado tu contraseña, puedes restablecerla.',
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('OK'),
              ),
            ],
          ),
        );
      }
    } catch (e) {
      // Muestra un mensaje de error si ocurre una excepción
      Navigator.pop(context); // Cierra el indicador de carga
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Error'),
          content:
              const Text('Ocurrió un error. Por favor, inténtalo de nuevo.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),

                // logo
                const Icon(
                  Icons.lock,
                  size: 100,
                ),

                const SizedBox(height: 50),

                // bienvenido de nuevo, ¡te hemos extrañado!
                Text(
                  '¡Bienvenido de nuevo!',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 25),

                // campo de texto para nombre de usuario
                MyTextField(
                  controller: usernameController,
                  hintText: 'Nombre de usuario',
                  obscureText: false,
                ),

                const SizedBox(height: 10),

                // campo de texto para contraseña
                MyTextField(
                  controller: passwordController,
                  hintText: 'Contraseña',
                  obscureText: true,
                ),

                const SizedBox(height: 10),

                // ¿olvidaste tu contraseña?
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        '¿Olvidaste tu contraseña?',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 65),
                // botón de iniciar sesión
                MyButton(
                  onTap: () => signUserIn(context),
                ),

                const SizedBox(height: 50),

                const SizedBox(height: 40),

                // ¿no eres miembro? regístrate ahora
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '¿No eres miembro?',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: () {
                        context.go(RoutePath
                            .crearUsuarios); // Navegar a la pantalla de crear usuario
                      },
                      child: const Text(
                        'Regístrate ahora',
                        style: TextStyle(
                          color: Color.fromARGB(255, 139, 97, 5),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
