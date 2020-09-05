import 'package:flutter/material.dart';
import 'package:satyam_website/routing/route_names.dart';
import 'navigation_drawer_header.dart';
import 'drawer_item.dart';


class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 16)]),
      child: Column(
        children: <Widget>[
          NavigationDrawerHeader(),
          DrawerItem('Resume', Icons.assignment, ResumeRoute),
          DrawerItem('About', Icons.person, AboutRoute),
        ],
      ),
    );
  }
}