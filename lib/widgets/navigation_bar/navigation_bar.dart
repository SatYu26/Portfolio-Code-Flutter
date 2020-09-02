import 'package:flutter/material.dart';
import 'package:satyam_website/Colors/colors.dart';

class NavigationBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            height: 250,
            width: 250,
            child: Image.asset('assets/logo.png'),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _NavBarItem('Resume'),
              SizedBox(
                width: 60,
              ),
              _NavBarItem('About'),
            ],
          )
        ]
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  const _NavBarItem(
      this.title, {
        Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 18, color: Coolors.navBarColor),
    );
  }
}