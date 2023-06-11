import 'package:flutter/material.dart';
import 'package:tfinal/componentes/paginas/pageExperiencia.dart';
import 'package:tfinal/paginas_principales/principal.dart';

// ignore: camel_case_types
class experi extends StatelessWidget {
  const experi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    ));
  }
}
