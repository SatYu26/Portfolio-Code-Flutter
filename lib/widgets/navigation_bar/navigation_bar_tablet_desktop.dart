import 'package:flutter/material.dart';
import 'package:satyam_website/routing/route_names.dart';
import 'package:satyam_website/widgets/navigation_bar/navbar_item.dart';
import 'package:satyam_website/widgets/navigation_bar/navbar_logo.dart';
import 'package:satyam_website/extensions/hover_extensions.dart';


class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            NavBarLogo(),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                NavBarItem('Home', HomeRoute).moveUpOnHover,
                SizedBox(
                  width: 60,
                ),
                NavBarItem('About', AboutRoute).moveUpOnHover,
                SizedBox(
                  width: 60,
                ),
                NavBarItem('Experience', ExperienceRoute).moveUpOnHover,
                SizedBox(
                  width: 60,
                ),
                NavBarItem('Projects', ProjectRoute).moveUpOnHover,
              ],
            )
          ]
      ),
    );
  }
}