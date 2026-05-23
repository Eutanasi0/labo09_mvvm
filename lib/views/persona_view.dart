import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../viewmodels/persona_viewmodel.dart';

class PersonaView extends StatelessWidget {
  const PersonaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Personas")),

      body: FutureBuilder(
        future: context.read<PersonaViewModel>().cargarPersonas(),

        builder: (context, snapshot) {
          final vm = context.watch<PersonaViewModel>();

          return ListView.builder(
            itemCount: vm.personas.length,

            itemBuilder: (context, index) {
              final p = vm.personas[index];

              return ListTile(
                title: Text("${p['nombre']} ${p['apellido']}"),

                subtitle: Text(p['estado_civil']),
              );
            },
          );
        },
      ),
    );
  }
}
