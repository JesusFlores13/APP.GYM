import 'package:http/http.dart' as http;
import 'dart:convert';

class SucursalService {
  static const String _baseUrl = 'https://gimnasio-deploy.onrender.com'; // Reemplaza con tu URL base
  static const String _token =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJOb21icmVfVXN1YXJpbyI6IkVtaWxpbyIsIkNvcnJlb19FbGVjdHJvbmljbyI6IiIsIkNvbnRyYXNlbmEiOiIxMjMiLCJOdW1lcm9fVGVsZWZvbmljb19Nb3ZpbCI6bnVsbH0.1R7XVYu_ek-hWXmEzSBIeUk7MP7udyTN-kjwREJu2zc';

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
