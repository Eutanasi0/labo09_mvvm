import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../viewmodels/login_viewmodel.dart';
import 'persona_view.dart';

class LoginView extends StatelessWidget {
  final usuarioController = TextEditingController();
  final passwordController = TextEditingController();

  LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login")),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [
            TextField(
              controller: usuarioController,
              decoration: const InputDecoration(labelText: "Usuario"),
            ),

            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(labelText: "Password"),
            ),

            ElevatedButton(
              onPressed: () async {
                bool ok = await context.read<LoginViewModel>().login(
                  usuarioController.text,
                  passwordController.text,
                );

                if (ok) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => PersonaView()),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Credenciales incorrectas")),
                  );
                }
              },

              child: const Text("Ingresar"),
            ),
          ],
        ),
      ),
    );
  }
}
