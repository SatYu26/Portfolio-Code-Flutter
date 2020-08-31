import 'package:flutter/material.dart';
import 'package:satyam_website/widgets/navigation%20bar/navigation_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: <Widget>[
        NavigationBar()
      ],),
    );
  }
}