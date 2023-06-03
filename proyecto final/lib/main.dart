import 'package:flutter/material.dart';
import 'package:tfinal/paginas/inicio.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Page1(),
    ),
  );
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 218, 227, 228),
      
      body: Center(
      
        child: TweenA(),
      ),
    );
  }
}



class Page2 extends StatelessWidget {
  const Page2({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/images/aceder.jpg'), // Ruta de la imagen de fondo
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
