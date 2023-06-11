// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names
import 'package:flutter/material.dart';

import '../componentes_estudio/listaEstudios.dart';

// ignore: camel_case_types
class estududios extends StatelessWidget {
  const estududios({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          color: const Color.fromARGB(179, 223, 216, 216),
          child: const listaEstudio()),
    );
  }
}

