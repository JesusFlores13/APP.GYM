import 'package:app_recursos_gym/screen/login_screen.dart';
import 'package:flutter/material.dart';

class WelcomeApp extends StatelessWidget {
  const WelcomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // La imagen de fondo
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/public/img/fondo.jpg'), // Ruta de tu imagen
            fit: BoxFit.cover, // Hace que la imagen cubra toda la pantalla
          ),
        ),
        // Aquí va el contenido de la pantalla
        child: Align(
          alignment: Alignment.bottomCenter, // Alinea el contenido en la parte inferior
          child: FractionallySizedBox(
            alignment: Alignment.bottomCenter, // Alinea el contenido en la parte inferior
            heightFactor: 0.4, // Hace que el contenido ocupe el 40% inferior de la pantalla
            child: Container(
              padding: const EdgeInsets.all(20),
              child: const Column(
                mainAxisSize: MainAxisSize.min, // No ocupa más espacio del necesario
                children: [
                
                  // Texto principal
                  Text(
                    'Bienvenido a ',
                    style: TextStyle(
                      height: 1.2,
                      fontSize: 30, // Tamaño de fuente grande
                      fontWeight: FontWeight.normal, // Negritas
                      color: Colors.white, // Color blanco para que contraste con el fondo
                    ),
                  ),
                  Text(
                    'Gym Bulls ',
                    style: TextStyle(
                      height: .8,
                      fontSize: 40, // Tamaño de fuente grande
                      fontWeight: FontWeight.bold, // Negritas
                      color: Color.fromARGB(255, 249, 41, 41), // Color blanco para que contraste con el fondo
                    ),
                  ),
        
                  SizedBox(height: 20), // Espacio entre los textos
                  // Descripción
                  Text(
                    '"No se trata de ser el mejor, se trata de ser mejor que ayer. Cada día es una nueva oportunidad para superarte y avanzar. ¡No importa cuán lento vayas, lo importante es que sigues avanzando!',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 16, // Tamaño de fuente más pequeño
                      color: Colors.white70, // Color blanco semitransparente
                    ),
                    textAlign: TextAlign.center, // Centra el texto si es más largo
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
     floatingActionButton: FloatingActionButton(
      
      // backgroundColor: Color.fromARGB(230, 0, 255, 128),
     backgroundColor: Color.fromARGB(255, 249, 41, 41),
      onPressed: () {
         // Navegar a la segunda pantalla
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginScreen()),
            );
      },
      child: const Icon(Icons.navigate_next),
    ),
    );
  }
}
