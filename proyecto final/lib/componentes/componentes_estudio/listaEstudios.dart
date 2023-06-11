// ignore_for_file: file_names

import 'package:flutter/material.dart';

// ignore: camel_case_types
class listaEstudio extends StatelessWidget {
  const listaEstudio({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Text(
          "Estudios ",
          style: TextStyle(fontSize: 60, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 60,
        ),
        ListTile(
          leading: SizedBox(
              child: Image(
            image: AssetImage('assets/images/logoColegio.png'),
            width: 65,
            height: 65,
            fit: BoxFit.cover,
          )),
          title: Text("INSTITUCIÓN EDUCATIVA CARLOS RAMIREZ PARIS",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w900)),
          subtitle: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 15, top: 10),
              child: Text('"BACHILLER TECNICO"',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w600)),
            ),
          ),
        ),
        SizedBox(
          height: 60,
        ),
        ListTile(
          leading: SizedBox(
              child: Image(
            image: AssetImage('assets/images/logoSena.png'),
            width: 65,
            height: 65,
            fit: BoxFit.cover,
          )),
          title: Text("SERVICIO NACIONAL DE APRENDIZAJE (SENA)",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w900)),
          subtitle: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 8, top: 10),
              child: Text('"TECNICO EN SISTEMAS"',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w600)),
            ),
          ),
        ),
        SizedBox(
          height: 60,
        ),
        ListTile(
          leading: SizedBox(
              child: Image(
            image: AssetImage('assets/images/logoIser.png'),
            width: 65,
            height: 65,
            fit: BoxFit.cover,
          )),
          title: Text('INSTITUTO SUPERIOR DE EDUCACIÓN RURAL - ISER',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w900)),
          subtitle: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 5, top: 10),
              child: Text(
                  '"Tecnología en Gestión de Redes y Sistemas Teleinformáticos"',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w600)),
            ),
          ),
        )
      ],
    );
  }
}
