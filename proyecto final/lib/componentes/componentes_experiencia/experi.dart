import 'package:flutter/material.dart';
import 'package:tfinal/paginas_principales/principal.dart';

// ignore: camel_case_types
class experi extends StatelessWidget {
  const experi({super.key});

  final TextStyle stilo = const TextStyle(
      fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black);
  final TextStyle stilo2 = const TextStyle(
      fontSize: 50, fontWeight: FontWeight.w500, color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(221, 223, 216, 216),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(249, 6, 7, 7),
        elevation: 10,
        // ignore: sort_child_properties_last
        leading: SizedBox(
          child: RawMaterialButton(
              fillColor: Colors.black,
              elevation: 0.0,
              padding: const EdgeInsets.symmetric(vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const principal()));
              },
              child: const Icon(
                Icons.arrow_back_ios,
                size: 30,
              )),
        ),
        title: const Text('Volver'),
      ),
      body: Center(
        child: Column(children: [
          const SizedBox(
            height: 30,
          ),
          const Image(
            image: AssetImage('assets/images/desa.png'),
            width: 80,
            height: 90,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Desarrollardor ",
                style: stilo2,
              ),
            ],
          ),
          Text(
            '"12/06/2023"',
            style: stilo,
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            "Funciones: ",
            style: stilo2,
          ),
          const SizedBox(
            height: 30,
          ),
          Text("1. Análisis y diseño", style: stilo),
          const SizedBox(
            height: 10,
          ),
          Text("2. Codificación", style: stilo),
          const SizedBox(
            height: 10,
          ),
          Text("3. Pruebas y depuración", style: stilo),
          const SizedBox(
            height: 10,
          ),
          Text("4. Mantenimiento y actualización", style: stilo),
          const SizedBox(
            height: 10,
          ),
          Text("5. Colaboración en equipo", style: stilo),
        ]),
      ),
    );
  }
}
