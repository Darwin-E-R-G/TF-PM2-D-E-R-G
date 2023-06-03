import 'package:flutter/material.dart';

class avatar extends StatelessWidget {
  const avatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundImage: AssetImage('assets/images/logo.png'),
      radius: 110,
    );
  }
}