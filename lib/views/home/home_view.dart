import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:satyam_website/views/home/home_content_mobile.dart';
import 'package:satyam_website/views/home/home_content_desktop.dart';


class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: SingleChildScrollView(child: HomeContentMobile()),
      desktop: HomeContentDesktop(),
    );
  }
}
