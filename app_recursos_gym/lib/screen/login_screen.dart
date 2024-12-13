import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'dashboard.dart';

const users = {
  'dribbble@gmail.com': '12345',
  'hunter@gmail.com': 'hunter',
};

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  // Tiempo de login simulado
  Duration get loginTime => const Duration(milliseconds: 2250);

  // Authenticator de usuario para la autenticación estándar (usuario y contraseña)
  Future<String?> _authUser(LoginData data) {
    debugPrint('Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(data.name)) {
        return 'User not exists';
      }
      if (users[data.name] != data.password) {
        return 'Password does not match';
      }
      return null;
    });
  }

  // Signup (registro) de usuario
  Future<String?> _signupUser(SignupData data) {
    debugPrint('Signup Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      return null;
    });
  }

  // Recuperación de contraseña
  Future<String> _recoverPassword(String name) {
    debugPrint('Name: $name');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return 'User not exists';
      }
      return "Nada";
    });
  }

  // Función para manejar el inicio de sesión con Google
  Future<User?> _signInWithGoogle() async {
    try {
      // Crear instancia de GoogleSignIn
      final GoogleSignIn googleSignIn = GoogleSignIn();
      
      // Iniciar sesión con Google
      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();

      if (googleUser == null) {
        return null; // Si el usuario cancela el login
      }

      // Obtener las credenciales de Google
      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

      // Crear un nuevo usuario con Firebase utilizando las credenciales
      final OAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // Iniciar sesión en Firebase
      final UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(credential);

      // Retornar el usuario autenticado
      return userCredential.user;
    } catch (e) {
      debugPrint('Error de Google Sign-In: $e');
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      title: 'Gym Bulls',
      logo: const AssetImage('assets/images/gym.png'),
      theme: LoginTheme(
        primaryColor: const Color.fromARGB(255, 0, 0, 0),
        accentColor: const Color.fromARGB(255, 249, 41, 41),
        errorColor: Colors.deepOrange,
        titleStyle: const TextStyle(
          color: Color.fromARGB(255, 249, 41, 41),
          fontFamily: 'Quicksand',
          letterSpacing: 4,
        ),
      ),
      onLogin: _authUser,
      onSignup: _signupUser,
      onRecoverPassword: _recoverPassword,
      loginProviders: <LoginProvider>[
        // Agregar Google Sign-In
        LoginProvider(
          icon: FontAwesomeIcons.google,
          label: 'Google',
          callback: () async {
            debugPrint('start google sign in');
            User? user = await _signInWithGoogle();
            if (user != null) {
              debugPrint('Google sign in successful: ${user.displayName}');
              // Redirigir a la pantalla principal después del login
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const DashboardScreen()),
              );
            } else {
              debugPrint('Google sign in failed');
            }
            return null;
          },
        ),
      ],
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const DashboardScreen(),
        ));
      },
    );
  }
}
