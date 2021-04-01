import 'package:flutter/material.dart';


class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      width: 75,
      child: Image.asset('assets/logo.png'),
    );
  }
}