import 'package:flutter/material.dart';
import 'package:animated_background/animated_background.dart';

import '../componentes/avatar.dart';
import '../componentes/botonIngresar.dart';
import '../componentes/nombre.dart';


// ignore: camel_case_types
class _inicio extends State<Inicio> with SingleTickerProviderStateMixin {
  double targetValue = 24.0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(        
        body: Center(
          child: AnimatedBackground(
            behaviour: ChildFlySpaceBehaviour(),
            vsync: this,
            child: const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  avatar(),
                  SizedBox(height: 100.0),
                  nombre(),
                  SizedBox(height: 300.0),
                  botonIngresar(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}



class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _inicio createState() => _inicio();
}
