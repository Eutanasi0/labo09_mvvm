import 'package:flutter/material.dart';
import '../repositories/persona_repository.dart';

class PersonaViewModel extends ChangeNotifier {
  final PersonaRepository repository = PersonaRepository();

  List<dynamic> personas = [];

  Future<void> cargarPersonas() async {
    personas = await repository.getPersonas();

    notifyListeners();
  }
}
