import 'package:flutter/material.dart';

// ignore: camel_case_types
class boton_contacto extends StatelessWidget {
  const boton_contacto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return const AlertDialog(
                title: Text("Mensaje enviado"),
              );
            });
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 27, 26, 26).withOpacity(0.3),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
      child: const Text(
        'Enviar',
        style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w300),
      ),
    );
  }
}