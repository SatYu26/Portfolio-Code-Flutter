import 'package:flutter/material.dart';
import 'package:satyam_website/routing/route_names.dart';
import 'package:satyam_website/views/about/about_view.dart';
import 'package:satyam_website/views/home/home_view.dart';
import 'package:satyam_website/views/Resume/resume_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  print('generateRoute: ${settings.name}');
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(HomeView());
    case AboutRoute:
      return _getPageRoute(AboutView());
    case ResumeRoute:
      return _getPageRoute(ResumeView());
    default:
      return _getPageRoute(HomeView());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(
    builder: (context) => child,
  );
}