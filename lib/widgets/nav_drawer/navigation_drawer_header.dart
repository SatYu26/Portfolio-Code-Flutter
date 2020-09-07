import 'package:flutter/material.dart';
import 'package:satyam_website/Colors/colors.dart';
import 'drawer_logo.dart';

class NavigationDrawerHeader extends StatelessWidget {
  const NavigationDrawerHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: Coolors.primaryColor,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          DrawerLogo(),
        ],
      ),
    );
  }
}