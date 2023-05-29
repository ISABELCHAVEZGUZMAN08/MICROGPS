import 'package:flutter/material.dart';
import 'package:flutter_micro1/registro_cliente_form.dart';


class LoginCliente extends StatefulWidget {
  const LoginCliente({Key? key}) : super(key: key);

  @override
  LoginClienteState createState() => LoginClienteState();
}

class LoginClienteState extends State<LoginCliente> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio de Sesión del Cliente'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: 'Nombre Completo',
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                labelText: 'CorreoElectronico',
              ),
              obscureText: true,
            ),

            const SizedBox(height: 16.0),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                labelText: 'Contraseña',
              ),
              obscureText: true,
            ),
            
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Aquí puedes agregar la lógica de autenticación del cliente
                String email = emailController.text;
                String password = passwordController.text;

                // Ejemplo de validación básica de los campos
                if (email.isNotEmpty && password.isNotEmpty) {
                  // Realiza la autenticación o cualquier otra acción necesaria
                  // Puedes agregar aquí la lógica para iniciar sesión del cliente
                  // ignore: avoid_print
                  print('Inicio de sesión exitoso: $email');
                } else {
                  // ignore: avoid_print
                  print('Por favor, ingresa un correo electrónico y contraseña válidos.');
                }
              },
              child: const Text('Iniciar Sesión'),
            ),
             ElevatedButton(
              child: const Text('Registrarse'),
              onPressed: () {
                              Navigator.pop(context);
                              Navigator.pushNamed(context, '/register',
                                  arguments: 'pasajero');
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const RegistroCliente()),
                              );
              },
              
            ),
          ],
        ),
      ),
    );
  }
}
