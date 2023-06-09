// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';

class contacto extends StatefulWidget {
  const contacto({super.key});

  @override
  State<contacto> createState() => _contactoState();
}

class _contactoState extends State<contacto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromARGB(179, 223, 216, 216),
      body:SizedBox(
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
              height:25,
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

class boton_contacto extends StatelessWidget {
  const boton_contacto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 27, 26, 26).withOpacity(0.3),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
          
        ),
      ),
      child: const Text(
        'Enviar',
        style: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.w300
        ),
      ),
    );
  }
}

class mensaje_contacto extends StatelessWidget {
  const mensaje_contacto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30.0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 27, 26, 26).withOpacity(0.3),
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: const TextField(
        maxLines: 4,
        decoration: InputDecoration.collapsed(
            hintText: 'Escribe tu mensaje...',
            hintStyle: TextStyle(color: Colors.white)),
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

TextField reusableTextField(
  String text,
  IconData icon,
) {
  return TextField(
    cursorColor: Colors.white,
    style: TextStyle(color: Colors.white.withOpacity(0.9)),
    decoration: InputDecoration(
      prefixIcon: Icon(
        icon,
        color: Colors.white70,
      ),
      labelText: text,
      labelStyle: TextStyle(color: Colors.white.withOpacity(0.9)),
      filled: true,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      fillColor: const Color.fromARGB(255, 27, 26, 26).withOpacity(0.3),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(width: 0, style: BorderStyle.none)),
    ),
  );
}
