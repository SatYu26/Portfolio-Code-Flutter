import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:satyam_website/widgets/navigation_bar/navigation_bar_tablet_desktop.dart';
import 'package:satyam_website/widgets/navigation_bar/navigation_bar_mobile.dart';
import 'package:satyam_website/extensions/hover_extensions.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavigationBarMobile(),
      tablet: NavigationBarTabletDesktop(),
    );
  }
}
