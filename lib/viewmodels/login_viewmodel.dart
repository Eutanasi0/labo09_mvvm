import 'package:flutter/material.dart';
import '../services/api_service.dart';

class LoginViewModel extends ChangeNotifier {
  final ApiService apiService = ApiService();

  Future<bool> login(String usuario, String password) async {
    final usuarios = await apiService.obtenerUsuarios();

    for (var u in usuarios) {
      if (u['usuario'] == usuario && u['password'] == password) {
        return true;
      }
    }

    return false;
  }
}
