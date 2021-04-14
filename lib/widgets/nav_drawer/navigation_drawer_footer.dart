import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class NavigationDrawerFooter extends StatelessWidget {
  const NavigationDrawerFooter({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height / 6,
        width: MediaQuery.of(context).size.width - 100,
        //color: Colors.white,
        child: Text(
          "Designed & Built by\nSatyam Goyal 💙 Flutter",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white.withOpacity(0.4),
            letterSpacing: 1.75,
            fontSize: 14.0,
          ),
        ),
      );
  }
}