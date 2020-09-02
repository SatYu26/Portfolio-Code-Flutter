import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'views/home/home_view.dart';
import 'package:satyam_website/Colors/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.orange,
          accentColor: Coolors.secondaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: HomeView(),
    );
  }
}
