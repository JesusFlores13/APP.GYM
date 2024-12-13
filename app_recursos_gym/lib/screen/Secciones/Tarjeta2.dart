import 'package:app_recursos_gym/screen/Components/AgregarSucursal.dart';
import 'package:flutter/material.dart';

class Tarjeta2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
      
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AgregarSucursal()),
            );
  
        // Acción cuando se toca la tarjeta
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('¡Tarjeta 1 presionada!')),
        );
      },
      child: Card(
        color: const Color.fromARGB(255, 255, 251, 251), // Fondo de la tarjeta padre
        elevation: 4, // Sombra de la tarjeta
         // Margen alrededor de la tarjeta padre
        child: Container(
          height: 200, // Ajusta la altura del contenedor padre
          child: Stack(
            children: [
              // Segunda tarjeta colocada para tocar bordes excepto el superior
              Positioned(
                top: 60, // Espacio desde la parte superior
                left: 0,
                right: 0,
                bottom: 0,
                child: Card(
                  color: const Color.fromRGBO(232, 249, 179, 1), // Fondo de la segunda tarjeta
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // Bordes redondeados
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(16), // Espaciado interno
                    child: ClipOval(
                      child: Container(
                        width: 30, // Ancho de la imagen
                        height: 30, // Altura de la imagen
                        child: Image.asset(
                          'assets/images/agregar-producto.png',
                          fit: BoxFit.contain, // Ajusta la imagen al espacio disponible
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              // Texto arriba de la segunda tarjeta
              const Positioned(
                
                top: 10, // Espacio desde la parte superior del contenedor padre
                left: 0, // Espaciado horizontal
                right: 0,
                child: Text(
                  'Agregar \n Recursos',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
