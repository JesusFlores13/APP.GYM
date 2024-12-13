import 'package:flutter/material.dart';

class Tarjeta1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.redAccent,
      child: Center(
        child: Text(
          'Tarjeta 1',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
