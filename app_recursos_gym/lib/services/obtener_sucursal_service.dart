import 'package:http/http.dart' as http;
import 'dart:convert';

class ObtenerSucursalService {
  static const String _baseUrl = 'https://gimnasio-deploy.onrender.com'; // Reemplaza con tu URL base
  static const String _token =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJOb21icmVfVXN1YXJpbyI6IkVtaWxpbyIsIkNvcnJlb19FbGVjdHJvbmljbyI6IiIsIkNvbnRyYXNlbmEiOiIxMjMiLCJOdW1lcm9fVGVsZWZvbmljb19Nb3ZpbCI6bnVsbH0.1R7XVYu_ek-hWXmEzSBIeUk7MP7udyTN-kjwREJu2zc';

  // Función para obtener todas las sucursales desde la API
  static Future<List<Map<String, dynamic>>> obtenerSucursales() async {
    final url = Uri.parse('$_baseUrl/sucursales/');

    try {
      final response = await http.get(
        url,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $_token',
        },
      );

      if (response.statusCode == 200) {
        // Convertir la respuesta en una lista de sucursales
        List<dynamic> data = jsonDecode(response.body);
        List<Map<String, dynamic>> sucursales =
            List<Map<String, dynamic>>.from(data);
        return sucursales;
      } else {
        print('Error al obtener las sucursales: ${response.body}');
        return [];
      }
    } catch (e) {
      print('Error de red: $e');
      return [];
    }
  }
}
