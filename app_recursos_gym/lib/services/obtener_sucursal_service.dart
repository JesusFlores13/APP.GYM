import 'package:http/http.dart' as http;
import 'dart:convert';

class ObtenerSucursalService {
  static const String _baseUrl = 'http://192.168.1.89:8000'; // Reemplaza con tu URL base
  static const String _token =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJOb21icmVfVXN1YXJpbyI6Ikplc3VzIiwiQ29ycmVvX0VsZWN0cm9uaWNvIjoic3RyaW5nIiwiQ29udHJhc2VuYSI6IjEyMyIsIk51bWVyb19UZWxlZm9uaWNvX01vdmlsIjoic3RyaW5nIn0.lSmpsABjrZfQmr1r-mNbQr89uS6IMly8kitq_wK2boc';

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
