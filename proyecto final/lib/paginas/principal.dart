import 'package:flutter/material.dart';
import 'package:tfinal/componentes/paginas/pageEstudios.dart';
import 'package:tfinal/componentes/paginas/pageExperiencia.dart';
import 'package:tfinal/componentes/paginas/pagecontacto.dart';
import 'package:tfinal/componentes/paginas/pageperfil.dart';
import '../componentes/componetes_incio/avatar.dart';
import '../componentes/paginas/pageSkill.dart';

import 'login.dart';

// ignore: camel_case_types
class principal extends StatefulWidget {
  const principal({super.key});

  @override
  State<principal> createState() => _principalState();
}

// ignore: camel_case_types
class _principalState extends State<principal> {
  late int _paginaActual = 0;
  final List<Widget> _paginas = [
    const perfil(),
    const skill(),
    const estududios(),
    const experiencia(),
    const contacto(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(249, 6, 7, 7),
        elevation: 10,
        // ignore: sort_child_properties_last
        leading: SizedBox(
          child: RawMaterialButton(
              fillColor: const Color.fromARGB(249, 7, 7, 7),
              elevation: 0.0,
              padding: const EdgeInsets.symmetric(vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const home()));
              },
              child: const Icon(
                Icons.exit_to_app_outlined,
                size: 30,
              )),
        ),
        title: const Text(
          "Darwin Robles",
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        actions: const [avatar(radio: 30)],
      ),
      body: _paginas[_paginaActual],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _paginaActual = index;
            });
          },
          currentIndex: _paginaActual,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                backgroundColor: Color.fromRGBO(8, 8, 8, 0.98),
                label: ("Perfil")),
            BottomNavigationBarItem(
                icon: Icon(Icons.engineering_rounded),
                backgroundColor: Color.fromRGBO(10, 10, 10, 0.98),
                label: "Skill"),
            BottomNavigationBarItem(
                icon: Icon(Icons.school),
                backgroundColor: Color.fromRGBO(14, 15, 15, 0.98),
                label: "Estudios"),
            BottomNavigationBarItem(
                icon: Icon(Icons.business_center_rounded),
                backgroundColor: Color.fromRGBO(7, 7, 7, 0.98),
                label: "Experincia"),
            BottomNavigationBarItem(
                icon: Icon(Icons.contact_mail_sharp),
                backgroundColor: Color.fromRGBO(10, 10, 10, 0.98),
                label: "Contactenos"),
          ]),
    );
  }
}
