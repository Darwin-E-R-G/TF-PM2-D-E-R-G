import 'package:flutter/material.dart';

// ignore: camel_case_types
class perfil extends StatelessWidget {
  const perfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: const Color.fromARGB(179, 223, 216, 216),
        child: const Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Text("Perfil",
                  style: TextStyle(
                      fontSize: 70,
                      fontWeight: FontWeight.w500,
                      color: Colors.black)),
              SizedBox(
                height: 30,
              ),
              Text(
                  "𝘛𝘦𝘤𝘯𝘪𝘤𝘰 𝘦𝘯 𝘴𝘪𝘴𝘵𝘦𝘮𝘢𝘴 𝘺 𝘢𝘤𝘵𝘶𝘢𝘭𝘮𝘦𝘯𝘵𝘦  𝘤𝘶𝘭𝘮𝘪𝘯𝘢n𝘥𝘰 mi tecnología en gestión de redes y sistemas teleinformáticas, en el INSTITUTO SUPERIOR DE EDUCACIÓN RURAL - ISER.   ",
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.black,
                  )),
              SizedBox(
                height: 5,
              ),
              Text(
                  "Institución Tecnológica de carácter público sujeta a inspección y vigilancia del Ministerio de Educación Nacional.",
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.black,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
