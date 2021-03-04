import 'package:flutter/material.dart';
import 'package:satyam_website/Colors/colors.dart';
import 'package:satyam_website/widgets/navigation_bar/navbar_logo.dart';
import 'package:satyam_website/widgets/nav_drawer/navigation_drawer.dart';


class NavigationBarMobile extends StatelessWidget {
  const NavigationBarMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            highlightColor: Colors.teal,
            color: Coolors.accentColor.withOpacity(0.6),
            iconSize: 35,
            onPressed: () {
              Scaffold.of(context).openDrawer();
              },
          ),
          NavBarLogo()
        ],
      ),
    );
  }
}