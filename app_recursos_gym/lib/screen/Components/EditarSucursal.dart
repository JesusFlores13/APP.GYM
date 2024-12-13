import 'package:flutter/material.dart';
import 'package:app_recursos_gym/services/sucursal_service.dart';

class EditarSucursal extends StatefulWidget {
  @override
  _EditarSucursalState createState() => _EditarSucursalState();
}

class _EditarSucursalState extends State<EditarSucursal> {
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
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    // Input fields with more padding and modern design
                    buildTextField(
                        'Nombre', (value) => nombre = value, 'Campo requerido'),
                    buildTextField('Dirección', (value) => direccion = value,
                        'Campo requerido'),
                    buildResponsableDropdown(),
                    buildNumericField(
                        'Total Clientes Atendidos',
                        (value) =>
                            totalClientesAtendidos = int.tryParse(value ?? '')),
                    buildNumericField(
                        'Promedio Clientes por Día',
                        (value) =>
                            promedioClientesDia = int.tryParse(value ?? '')),
                    buildNumericField('Capacidad Máxima',
                        (value) => capacidadMaxima = int.tryParse(value ?? '')),
                    buildNumericField('Total Empleados',
                        (value) => totalEmpleados = int.tryParse(value ?? '')),
                    buildHorarioDropdown(),
                    buildStatusDropdown(),
                    SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        // Color del botón
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 30),
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
  Widget buildTextField(
      String label, Function(String?) onSaved, String validatorText) {
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

  // Función para el dropdown de responsables
  Widget buildResponsableDropdown() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: DropdownButtonFormField<int>(
        decoration: InputDecoration(
          labelText: 'Responsable',
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
          DropdownMenuItem(value: 1, child: Text('Juan Pérez')),
          DropdownMenuItem(value: 2, child: Text('María López')),
          DropdownMenuItem(value: 3, child: Text('Carlos Ramírez')),
          DropdownMenuItem(value: 4, child: Text('Ana Torres')),
          DropdownMenuItem(value: 5, child: Text('Luis González')),
        ],
        onChanged: (value) => responsableId = value,
        onSaved: (value) => responsableId = value,
      ),
    );
  }

  // Función para el dropdown de horarios
  Widget buildHorarioDropdown() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          labelText: 'Horario de Disponibilidad',
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
          DropdownMenuItem(
              value: 'Mañana', child: Text('Mañana (6:00 AM - 12:00 PM)')),
          DropdownMenuItem(
              value: 'Tarde', child: Text('Tarde (12:00 PM - 6:00 PM)')),
          DropdownMenuItem(
              value: 'Noche', child: Text('Noche (6:00 PM - 12:00 AM)')),
          DropdownMenuItem(
              value: 'Todo el día',
              child: Text('Todo el día (6:00 AM - 12:00 AM)')),
        ],
        onChanged: (value) => horarioDisponibilidad = value,
        onSaved: (value) => horarioDisponibilidad = value,
      ),
    );
  }
}
