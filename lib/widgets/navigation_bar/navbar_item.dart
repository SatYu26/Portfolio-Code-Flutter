import 'package:flutter/material.dart';
import 'package:satyam_website/Colors/colors.dart';
import 'package:satyam_website/locator.dart';
import 'package:satyam_website/services/navigation_service.dart';


class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  const NavBarItem(this.title, this.navigationPath);


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: Text(
        title,
        style: TextStyle(fontSize: 18, color: Coolors.navBarColor),
      ),
    );
  }
}