import 'package:flutter/material.dart';
import 'package:satyam_website/widgets/navigation_bar/navigation_bar.dart';
import 'package:satyam_website/widgets/centered_view/centered_view.dart';
import 'package:satyam_website/widgets/name_widget/name_widget.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:satyam_website/Colors/colors.dart';
import 'package:satyam_website/widgets/Introduction/introduction.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          NameWidget(),
          SizedBox(
            height: 30,
          ),
          IntroductionWidget(),
        ]);
  }
}
