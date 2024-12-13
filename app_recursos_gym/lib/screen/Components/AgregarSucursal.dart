import 'package:flutter/material.dart';
import 'package:app_recursos_gym/services/sucursal_service.dart';

class AgregarSucursal extends StatefulWidget {
  @override
  _AgregarSucursalState createState() => _AgregarSucursalState();
}

class _AgregarSucursalState extends State<AgregarSucursal> {
  final _formKey = GlobalKey<FormState>();
  String? nombre;
  String? direccion;
  int? responsableId;
  int? totalClientesAtendidos;
  int? promedioClientesDia;
  int? capacidadMaxima;
  int? totalEmpleados;
  String? horarioDisponibilidad;
  bool? estatus;

  // Función para guardar y enviar los datos
  Future<void> guardarDatos() async {
    final data = {
      "Nombre": nombre,
      "Direccion": direccion,
      "Responsable_Id": responsableId,
      "Total_Clientes_Atendidos": totalClientesAtendidos,
      "Promedio_Clientes_X_Dia": promedioClientesDia,
      "Capacidad_Maxima": capacidadMaxima,
      "Total_Empleados": totalEmpleados,
      "Horario_Disponibilidad": horarioDisponibilidad,
      "Estatus": estatus,
      "Fecha_Registro": DateTime.now().toIso8601String(),
      "Fecha_Actualizacion": DateTime.now().toIso8601String(),
    };

    // Llamada al servicio para enviar los datos
    await SucursalService.guardarSucursal(data);

    // Feedback para el usuario
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Datos enviados exitosamente')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50], // Fondo más suave
      appBar: AppBar(
        title: Text('Guardar Sucursales'),
      ),
      body: Center(
        child: Card(
          color: Colors.white, // Fondo blanco para la tarjeta
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Detalles de la Sucursal',
                      style: TextStyle(color: Colors.black87, fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    // Input fields with more padding and modern design
                    buildTextField('Nombre', (value) => nombre = value, 'Campo requerido'),
                    buildTextField('Dirección', (value) => direccion = value, 'Campo requerido'),
                    buildNumericField('ID Responsable', (value) => responsableId = int.tryParse(value ?? '')),
                    buildNumericField('Total Clientes Atendidos', (value) => totalClientesAtendidos = int.tryParse(value ?? '')),
                    buildNumericField('Promedio Clientes por Día', (value) => promedioClientesDia = int.tryParse(value ?? '')),
                    buildNumericField('Capacidad Máxima', (value) => capacidadMaxima = int.tryParse(value ?? '')),
                    buildNumericField('Total Empleados', (value) => totalEmpleados = int.tryParse(value ?? '')),
                    buildTextField('Horario Disponibilidad', (value) => horarioDisponibilidad = value, ''),
                    buildStatusDropdown(),
                    SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        // Color del botón
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          guardarDatos(); // Llamar a la función de almacenamiento.
                        }
                      },
                      child: Text('Guardar', style: TextStyle(fontSize: 16)),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Función reutilizable para los campos de texto
  Widget buildTextField(String label, Function(String?) onSaved, String validatorText) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(color: Colors.blueGrey), // Color del label
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide(color: Colors.blueGrey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide(color: Colors.blueGrey),
          ),
        ),
        onSaved: onSaved,
        validator: (value) => value!.isEmpty ? validatorText : null,
      ),
    );
  }

  // Función reutilizable para los campos numéricos
  Widget buildNumericField(String label, Function(String?) onSaved) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(color: Colors.blueGrey),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide(color: Colors.blueGrey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide(color: Colors.blueGrey),
          ),
        ),
        keyboardType: TextInputType.number,
        onSaved: onSaved,
      ),
    );
  }

  // Función para el dropdown de estatus
  Widget buildStatusDropdown() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: DropdownButtonFormField<bool>(
        decoration: InputDecoration(
          labelText: 'Estatus',
          labelStyle: TextStyle(color: Colors.blueGrey),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide(color: Colors.blueGrey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide(color: Colors.blueGrey),
          ),
        ),
        items: [
          DropdownMenuItem(value: true, child: Text('Activo')),
          DropdownMenuItem(value: false, child: Text('Inactivo')),
        ],
        onChanged: (value) => estatus = value,
        onSaved: (value) => estatus = value,
      ),
    );
  }
}
