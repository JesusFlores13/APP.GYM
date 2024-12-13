import 'package:app_recursos_gym/screen/Components/AgregarSucursal.dart';
import 'package:app_recursos_gym/screen/Components/EditarSucursal.dart';
import 'package:app_recursos_gym/services/obtener_sucursal_service.dart';
import 'package:flutter/material.dart';

class SucursalesPage extends StatefulWidget {
  @override
  _SucursalesPageState createState() => _SucursalesPageState();
}

class _SucursalesPageState extends State<SucursalesPage> {
  late Future<List<Map<String, dynamic>>> sucursales;

  @override
  void initState() {
    super.initState();
    sucursales = ObtenerSucursalService.obtenerSucursales();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sucursales'),
      ),
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: sucursales,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error al cargar las sucursales'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No hay sucursales disponibles'));
          } else {
            final sucursalesData = snapshot.data!;
            return ListView.builder(
              itemCount: sucursalesData.length,
              itemBuilder: (context, index) {
                final sucursal = sucursalesData[index];
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          title: Text(
                              sucursal['Nombre'] ?? 'Nombre no disponible'),
                          subtitle: Text(sucursal['Direccion'] ??
                              'Dirección no disponible'),
                          trailing:
                              Text(sucursal['Estatus'] ? 'Activo' : 'Inactivo'),
                        ),
                        SizedBox(height: 10),
                        Align(
                          alignment: Alignment.centerRight,
                          child: ElevatedButton(
                            onPressed: () {
                              // Navegar a la segunda pantalla
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => EditarSucursal()),
                              );
                            },
                            child: Text('Editar'),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
