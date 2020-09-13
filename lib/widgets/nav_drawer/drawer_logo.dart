import 'package:flutter/material.dart';

class DrawerLogo extends StatelessWidget {
  const DrawerLogo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95,
      child: Image.asset('assets/logo.png'),
    );
  }
}