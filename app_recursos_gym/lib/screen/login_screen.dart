import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'dashboard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/rendering.dart';

const users = {
  'dribbble@gmail.com': '12345',
  'hunter@gmail.com': 'hunter',
};

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  Duration get loginTime => const Duration(milliseconds: 2250);

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

  Future<String?> _signupUser(SignupData data) {
    debugPrint('Signup Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      return null;
    });
  }

  Future<String> _recoverPassword(String name) {
    debugPrint('Name: $name');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return 'User not exists';
      }
      return "Nada";
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      title: 'Gym Bulls',
      logo: const AssetImage('assets/images/logo.webp'),
     theme: LoginTheme(
        primaryColor: const Color.fromARGB(255, 0, 0, 0),
        accentColor: Colors.yellow,
        errorColor: Colors.deepOrange,
        titleStyle: const TextStyle(
          color: Color.fromARGB(255, 41, 249, 148),
          fontFamily: 'Quicksand',
          letterSpacing: 4,
        ),
     ),
      onLogin: _authUser,
      onSignup: _signupUser,
      
        loginProviders: <LoginProvider>[
          LoginProvider(
            icon: FontAwesomeIcons.google,
            label: 'Google',
            callback: () async {
              debugPrint('start google sign in');
              await Future.delayed(loginTime);
              debugPrint('stop google sign in');              
              return null;
            },
          ),
          LoginProvider(
            icon: FontAwesomeIcons.facebookF,
            label: 'Facebook',
            callback: () async {            
              debugPrint('start facebook sign in');
              await Future.delayed(loginTime);
              debugPrint('stop facebook sign in');              
              return null;
            },
          ),

        ],
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const DashboardScreen(),
        ));
      },
      onRecoverPassword: _recoverPassword,
    );
  }
}