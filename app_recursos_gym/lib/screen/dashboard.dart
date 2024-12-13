import 'package:app_recursos_gym/screen/Secciones/Recursos.dart';
import 'package:app_recursos_gym/screen/Secciones/Tarjeta3.dart';
import 'package:app_recursos_gym/screen/Secciones/Tarjeta4.dart';
import 'package:flutter/material.dart';
import 'package:app_recursos_gym/screen/Secciones/Tarjeta2.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(
          255, 255, 255, 255), // Fondo negro para toda la pantalla
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Imagen ovalada
                  ClipOval(
                    child: Container(
                      width: 80, // Ancho de la imagen
                      height: 80, // Altura de la imagen
                      child: Image.asset(
                        'assets/images/avatar.png',
                        fit: BoxFit
                            .cover, // Asegura que la imagen cubra el espacio
                      ),
                    ),
                  ),
                  SizedBox(width: 16), // Espacio entre la imagen y los textos
                  // Textos
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bienvenido 👋',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        'Recursos Materiales',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 8), // Espacio entre los textos
                    ],
                  ),
                ],
              ),
              SizedBox(
                  height: 20), // Espacio entre la fila y el resto del contenido
              // Tarjeta
              Container(
                  margin: const EdgeInsets.only(
                      bottom: 5, top: 20), // Espaciado inferior
                  width: double.infinity, // Ocupar todo el ancho disponible
                  child: Tarjeta1()),
              // GridView
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2, // Dos columnas
                  crossAxisSpacing: 16, // Espacio horizontal entre tarjetas
                  mainAxisSpacing: 16, // Espacio vertical entre tarjetas
                  children: [
                    Tarjeta2(),
                    Tarjeta3(),
                    Tarjeta4()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
