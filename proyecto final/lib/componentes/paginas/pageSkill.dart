// ignore_for_file: camel_case_types, unused_import, file_names, non_constant_identifier_names
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/material.dart';

class skill extends StatelessWidget {
  const skill({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(179, 223, 216, 216),
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "!!SKILLS!!",
              style: TextStyle(fontSize: 60),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                porcent_skill(
                  NPorcent: 0.6,
                  NSkill: 'JAVA',
                  porcent: '60%',
                  colorb: Colors.blue,
                ),
                SizedBox(
                  width: 20,
                ),
                porcent_skill(
                  NPorcent: 0.5,
                  NSkill: 'FLUTTER',
                  porcent: '50%',
                  colorb: Colors.yellow,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                porcent_skill(
                  NPorcent: 0.4,
                  NSkill: 'CSS',
                  porcent: '40%',
                  colorb: Color.fromARGB(255, 235, 173, 81),
                ),
                SizedBox(
                  width: 20,
                ),
                porcent_skill(
                  NPorcent: 0.4,
                  NSkill: 'HTML',
                  porcent: '40%',
                  colorb: Color.fromARGB(255, 235, 173, 81),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                porcent_skill(
                  NPorcent: 0.4,
                  NSkill: 'JAVASCRIPT',
                  porcent: '40%',
                  colorb: Color.fromARGB(255, 235, 173, 81),
                ),
                SizedBox(
                  width: 20,
                ),
                porcent_skill(
                  NPorcent: 0.4,
                  NSkill: 'REACT',
                  porcent: '40%',
                  colorb: Color.fromARGB(255, 235, 173, 81),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                porcent_skill(
                  NPorcent: 0.3,
                  NSkill: 'PYTHON',
                  porcent: '30%',
                  colorb: Color.fromARGB(255, 233, 66, 54),
                ),
                SizedBox(
                  width: 20,
                ),
                porcent_skill(
                  NPorcent: 0.3,
                  NSkill: 'BASE DE DATOS',
                  porcent: '30%',
                  colorb: Color.fromARGB(255, 233, 66, 54),
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }
}

class porcent_skill extends StatelessWidget {
  const porcent_skill(
      {super.key,
      required double NPorcent,
      required String NSkill,
      required String porcent,
      required Color colorb})
      : _skill = NSkill,
        _Nporcent = NPorcent,
        _porcent = porcent,
        _colorb = colorb;

  final double _Nporcent;
  final String _skill;
  final String _porcent;
  final Color _colorb;

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 70.0,
      lineWidth: 13.0,
      animation: true,
      percent: _Nporcent,
      center: Text(
        _porcent,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
      footer: Text(
        _skill,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
      ),
      circularStrokeCap: CircularStrokeCap.round,
      backgroundColor: Colors.black,
      progressColor: _colorb,
    );
  }
}
