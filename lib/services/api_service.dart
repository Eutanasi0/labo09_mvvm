import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = "https://labo09-backend.onrender.com";

  Future<List<dynamic>> obtenerUsuarios() async {
    final response = await http.get(Uri.parse("$baseUrl/usuarios"));

    return jsonDecode(response.body);
  }

  Future<List<dynamic>> obtenerPersonas() async {
    final response = await http.get(Uri.parse("$baseUrl/personas"));

    return jsonDecode(response.body);
  }
}
