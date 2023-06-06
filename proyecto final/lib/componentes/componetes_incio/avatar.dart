import 'package:flutter/material.dart' show AssetImage, BuildContext, CircleAvatar, StatelessWidget, Widget;

// ignore: camel_case_types
class avatar extends StatelessWidget {
  const avatar({super.key, required  double radio}) : _radio = radio;
  // ignore: prefer_typing_uninitialized_variables
  final double _radio;
  @override
  Widget build(BuildContext context) {
    return  CircleAvatar(
      backgroundImage: const AssetImage('assets/images/logo.png'),
      radius: _radio,
    );
  }
}
