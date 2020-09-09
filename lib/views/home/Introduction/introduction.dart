import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:satyam_website/views/home/Introduction/introduction_mobile.dart';
import 'package:satyam_website/views/home/Introduction/introduction_tablet_desktop.dart';


class IntroductionWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: IntroductionMobile(),
      tablet: IntroductionTabletDesktop(),
    );
  }
}