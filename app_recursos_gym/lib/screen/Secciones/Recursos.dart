import 'package:flutter/material.dart';

class Tarjeta1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Acción cuando se toca la tarjeta
        print('Tarjeta 1 tocada');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('¡Tarjeta 1 presionada!')),
        );
      },
      child: Card(
        color: Color.fromRGBO(136, 126, 241, 1),
        margin: EdgeInsets.all(8), // Margen alrededor de la tarjeta
        child: Container(
          width: double.infinity, // Ocupar todo el ancho de la pantalla
          padding: EdgeInsets.all(16), // Espaciado interno
          child: Row(
            children: [
              // Imagen
              Container(
                width: MediaQuery.of(context).size.width * 0.3, // 30% del ancho
                
                child: 
                Image.asset(

                  'assets/images/img1.png', 
                  fit: BoxFit.cover,
                   // Ajuste de la imagen
                ),
              ),
              // Textos
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Alineación a la izquierda
                  mainAxisAlignment: MainAxisAlignment.center, // Centrado vertical
                  children: [
                    Text(
                      '¡Tu única competencia',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8), // Espacio entre los textos
                    Text(
                      'eres tú!',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                      ),
                    ),
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
