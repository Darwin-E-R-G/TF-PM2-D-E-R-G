// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';

import '../componentes_contacto/boton_enviar.dart';
import '../componentes_contacto/campos.dart';
import '../componentes_contacto/mensaje.dart';

class contacto extends StatefulWidget {
  const contacto({super.key});

  @override
  State<contacto> createState() => _contactoState();
}

class _contactoState extends State<contacto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(179, 223, 216, 216),
      body: SizedBox(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Column(children: [
              const SizedBox(
                height: 80,
              ),
              const Text(
                "Contactanos",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black87,
                    fontWeight: FontWeight.w900),
              ),
              const SizedBox(
                height: 60,
              ),
              reusableTextField("Nombre", Icons.person_outline),
              const SizedBox(
                height: 25,
              ),
              reusableTextField("Email", Icons.email_sharp),
              const SizedBox(
                height: 25,
              ),
              reusableTextField("Telefono", Icons.phonelink_ring_sharp),
              const SizedBox(
                height: 32,
              ),
              const mensaje_contacto(),
              const SizedBox(
                height: 70,
              ),
              const boton_contacto(),
            ]),
          ),
        ),
      ),
    );
  }
}
