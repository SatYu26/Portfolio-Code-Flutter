import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:satyam_website/locator.dart';
import 'package:satyam_website/Colors/colors.dart';
import 'package:satyam_website/views/layout_template/layout_template.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Satyam Goyal',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        accentColor: Coolors.secondaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: LayoutTemplate(),
    );
  }
}
