import 'package:flutter/material.dart';
import 'package:satyam_website/Colors/colors.dart';


class NavBarItem extends StatelessWidget {
  final String title;
  const NavBarItem(this.title);

  @override
  Widget build(BuildContext context) {
//    Navigator.of(context).pushNamed('About');
    return Text(
      title,
      style: TextStyle(fontSize: 18, color: Coolors.navBarColor),
    );
  }
}