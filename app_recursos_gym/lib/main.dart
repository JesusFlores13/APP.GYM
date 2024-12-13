import 'package:app_recursos_gym/screen/login_screen.dart';
import 'package:app_recursos_gym/screen/welcome_app.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WelcomeApp(), // Pantalla de inicio
    );
  }
}
