import '../services/api_service.dart';

class PersonaRepository {
  final ApiService apiService = ApiService();

  Future<List<dynamic>> getPersonas() async {
    return await apiService.obtenerPersonas();
  }
}
