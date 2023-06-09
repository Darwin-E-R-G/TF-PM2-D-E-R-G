import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tfinal/paginas/login.dart';
import '../componentes/wit.dart';

// ignore: camel_case_types
class registroScreen extends StatefulWidget {
  const registroScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _registroScreen createState() => _registroScreen();
}

// ignore: camel_case_types
class _registroScreen extends State<registroScreen> {
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _userNameTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 8, 92, 134),
        elevation: 0,
        leading: SizedBox(
          child: RawMaterialButton(
              fillColor: const Color.fromARGB(255, 8, 92, 134),
              elevation: 0.0,
              padding: const EdgeInsets.symmetric(vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const home()));
              },
              child: const Icon(
                Icons.arrow_back_ios,
                size: 30,
              )),
        ),
        title: const Text(
          "Registro",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
          color: Colors.blueGrey,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
              child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 120, 20, 0),
            child: Column(
              children: <Widget>[
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/logi.png'),
                  radius: 110,
                ),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter UserName", Icons.person_outline, false,
                    _userNameTextController),
                const SizedBox(height: 20,),
                reusableTextField("Enter Email Id", Icons.person_outline, false,
                    _emailTextController),
                const SizedBox(height: 20,),
                reusableTextField("Enter Password", Icons.lock_outlined, true,
                    _passwordTextController),
                const SizedBox(height: 30,),
                firebaseUIButton(context, "Registrate", () {
                  FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                          email: _emailTextController.text,
                          password: _passwordTextController.text)
                      .then((value) {
                        // ignore: avoid_print
                    print("Created New Account");
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const home()));
                  }).onError((error, stackTrace) {
                    // ignore: avoid_print
                    print("Error ${error.toString()}");
                  });
                })
              ],
            ),
          ))),
    );
  }
}
