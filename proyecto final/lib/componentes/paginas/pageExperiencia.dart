// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:tfinal/componentes/componentes_experiencia/experi.dart';

// ignore: camel_case_types
class experiencia extends StatelessWidget {
  const experiencia({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(179, 223, 216, 216),
        body: Container(
          color: const Color.fromARGB(179, 223, 216, 216),
          child: Center(
            child: ListView(
              children: [
                const Text(
                  "Experiencia",
                  style: TextStyle(fontSize: 60, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 50,
                ),
                ListTile(
                  leading: const SizedBox(
                      child: Image(
                    image: AssetImage('assets/images/desa.png'),
                    width: 65,
                    height: 65,
                    fit: BoxFit.cover,
                  )),
                  title: const Text(
                    "Desarrollardor",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.w900),
                  ),
                  subtitle: const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Text('"12/06/2023"',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w600)),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const experi()));
                  },
                ),
                const SizedBox(
                  height: 50,
                ),
                ListTile(
                  leading: const SizedBox(
                      child: Image(
                    image: AssetImage('assets/images/desa.png'),
                    width: 65,
                    height: 65,
                    fit: BoxFit.cover,
                  )),
                  title: const Text(
                    "Desarrollardor",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.w900),
                  ),
                  subtitle: const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Text('"12/06/2023"',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w600)),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const experi()));
                  },
                ),
                const SizedBox(
                  height: 50,
                ),
                ListTile(
                  leading: const SizedBox(
                      child: Image(
                    image: AssetImage('assets/images/desa.png'),
                    width: 65,
                    height: 65,
                    fit: BoxFit.cover,
                  )),
                  title: const Text(
                    "Desarrollardor",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.w900),
                  ),
                  subtitle: const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Text('"12/06/2023"',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w600)),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const experi()));
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
