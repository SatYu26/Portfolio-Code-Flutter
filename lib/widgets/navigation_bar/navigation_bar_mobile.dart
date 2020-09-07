import 'package:flutter/material.dart';
import 'package:satyam_website/widgets/navigation_bar/navbar_logo.dart';
import 'package:satyam_website/widgets/nav_drawer/navigation_drawer.dart';


class NavigationBarMobile extends StatelessWidget {
  const NavigationBarMobile({Key key}) : super(key: key);

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
            onPressed: () {Scaffold.of(context).openDrawer();},
          ),
          NavBarLogo()
        ],
      ),
    );
  }
}