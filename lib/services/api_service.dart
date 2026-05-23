import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {

  final String baseUrl = "http://10.0.2.2:8000";

  Future<List<dynamic>> obtenerUsuarios() async {

    final response =
        await http.get(Uri.parse("$baseUrl/usuarios"));

    return jsonDecode(response.body);
  }

  Future<List<dynamic>> obtenerPersonas() async {

    final response =
        await http.get(Uri.parse("$baseUrl/personas"));

    return jsonDecode(response.body);
  }
}
