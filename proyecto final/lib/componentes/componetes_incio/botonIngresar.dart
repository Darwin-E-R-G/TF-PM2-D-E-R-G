
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../../paginas/login.dart';

// ignore: camel_case_types
class botonIngresar extends StatelessWidget {
  const botonIngresar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(_createRoute());
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 61, 98, 161),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      child: const Text(
        'INGRESAR',
        style: TextStyle(
          fontSize: 40.0,
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const home(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 3.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
