import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:tfinal/paginas_principales/inicio.dart';
import 'package:tfinal/paginas_principales/principal.dart';
import 'package:tfinal/paginas_principales/registra.dart';

// ignore: camel_case_types
class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

// ignore: camel_case_types
class _homeState extends State<home> {
  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initializeFirebase(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return const login();
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}

// ignore: camel_case_types
class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

// ignore: camel_case_types
class _loginState extends State<login> {
  static Future<User?> loginUser(
      {required String email,
      required String password,
      required BuildContext context}) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    // ignore: non_constant_identifier_names
    User? user;
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      user = userCredential.user;
    } on FirebaseException catch (e) {
      if (e.code == "user-not-found") {
        // ignore: avoid_print
        print("no user found for that email");
      }
    }
    return user;
  }

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    TextEditingController _email = TextEditingController();
    // ignore: no_leading_underscores_for_local_identifiers
    TextEditingController _password = TextEditingController();
    return Scaffold(
      backgroundColor: const Color.fromARGB(226, 236, 233, 238),
      appBar: AppBar(
        leading: SizedBox(
          child: RawMaterialButton(
              fillColor: Colors.black,
              elevation: 0.0,
              padding: const EdgeInsets.symmetric(vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const Inicio()));
              },
              child: const Icon(
                Icons.arrow_back_ios,
                size: 30,
              )),
        ),
        backgroundColor: const Color.fromARGB(249, 6, 7, 7),
        title: const Text('Inicio'),
        actions: [
          GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const registroScreen()));
              },
              child: const Icon(
                Icons.people_alt,
                size: 50,
              ))
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('assets/images/logi.png'),
                backgroundColor: Color.fromARGB(225, 236, 233, 238),
                radius: 120,
              ),
              const SizedBox(
                height: 15,
              ),
              camposInicio(email: _email),
              const SizedBox(
                height: 15,
              ),
              campoContrasena(password: _password),
              const SizedBox(height: 60),
              SizedBox(
                width: 300,
                child: RawMaterialButton(
                  fillColor:
                      const Color.fromARGB(255, 27, 26, 26).withOpacity(0.3),
                  elevation: 0.0,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  onPressed: () async {
                    User? user = await loginUser(
                        email: _email.text,
                        password: _password.text,
                        context: context);
                    if (user != null) {
                      // ignore: use_build_context_synchronously
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const principal()));
                    } else {
                      // ignore: use_build_context_synchronously
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return const AlertDialog(
                              title: Text("ERROR"),
                              content: SingleChildScrollView(
                                child: Text("Verifica tus datos"),
                              ),
                            );
                          });
                    }
                  },
                  child: const Text(
                    "INICIAR SESION ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const invitado(),
              const SizedBox(height: 20),
              const botonRegistro(),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class invitado extends StatelessWidget {
  const invitado({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: RawMaterialButton(
        fillColor: const Color.fromARGB(255, 27, 26, 26).withOpacity(0.3),
        elevation: 0.0,
        padding: const EdgeInsets.symmetric(vertical: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        onPressed: () {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const principal()));
        },
        child: const Text(
          "Modo invitado ",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class botonRegistro extends StatelessWidget {
  const botonRegistro({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: RawMaterialButton(
        fillColor: const Color.fromARGB(255, 27, 26, 26).withOpacity(0.3),
        elevation: 0.0,
        padding: const EdgeInsets.symmetric(vertical: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        onPressed: () {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const registroScreen()));
        },
        child: const Text(
          "Clicp para registrarte ",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class campoContrasena extends StatelessWidget {
  const campoContrasena({
    super.key,
    required TextEditingController password,
  }) : _password = password;

  final TextEditingController _password;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _password,
      obscureText: true,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.lock),
        labelText: "password",
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
}

// ignore: camel_case_types
class camposInicio extends StatelessWidget {
  const camposInicio({
    super.key,
    required TextEditingController email,
  }) : _email = email;

  final TextEditingController _email;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _email,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.email),
            labelText: "Email",
            labelStyle: TextStyle(color: Colors.white.withOpacity(0.9)),
            filled: true,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            fillColor: const Color.fromARGB(255, 27, 26, 26).withOpacity(0.3),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide:
                    const BorderSide(width: 0, style: BorderStyle.none)),
          ),
        ),
      ],
    );
  }
}
