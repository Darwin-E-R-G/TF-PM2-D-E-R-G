


import 'package:flutter/material.dart';

// ignore: camel_case_types
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
