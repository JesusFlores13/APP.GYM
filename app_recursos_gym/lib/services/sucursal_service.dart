import 'package:http/http.dart' as http;
import 'dart:convert';

class SucursalService {
  static const String _baseUrl = 'http://192.168.1.89:8000'; // Reemplaza con tu URL base
  static const String _token =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJOb21icmVfVXN1YXJpbyI6Ikplc3VzIiwiQ29ycmVvX0VsZWN0cm9uaWNvIjoic3RyaW5nIiwiQ29udHJhc2VuYSI6IjEyMyIsIk51bWVyb19UZWxlZm9uaWNvX01vdmlsIjoic3RyaW5nIn0.lSmpsABjrZfQmr1r-mNbQr89uS6IMly8kitq_wK2boc';

  // Función para enviar datos a la API
  static Future<void> guardarSucursal(Map<String, dynamic> data) async {
    final url = Uri.parse('$_baseUrl/sucursales/');

    try {
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $_token',
        },
        body: jsonEncode(data),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        print('Sucursal guardada exitosamente: ${response.body}');
      } else {
        print('Error al guardar la sucursal: ${response.body}');
      }
    } catch (e) {
      print('Error de red: $e');
    }
  }
}
