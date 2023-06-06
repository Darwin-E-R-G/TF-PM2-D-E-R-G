import 'package:flutter/material.dart';

// ignore: camel_case_types
class perfil extends StatelessWidget {
  const perfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.blueGrey,
        child: const Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text("Perfil",
                style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.w500,
                    color: Colors.white)),
            SizedBox(
              height: 30,
            ),
            Text(
              "Tecnico en sistemas y actualmente culminado la tecnologia en gestion de redes y sistemas ",
              style: TextStyle(
                  fontSize: 30, color: Color.fromARGB(255, 181, 236, 218)),
            ),
            Text(
                "teleinformatico, en el INSTITUTO SUPERIOR DE EDUCACIÓN RURAL - ISER ",
                style: TextStyle(
                    fontSize: 30, color: Color.fromARGB(255, 181, 236, 218))),
          ],
        ),
      ),
    );
  }
}
