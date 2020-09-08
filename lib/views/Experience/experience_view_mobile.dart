import 'package:flutter/material.dart';
import 'package:satyam_website/Colors/colors.dart';
import 'package:velocity_x/velocity_x.dart';

class ExperienceViewMobile extends StatelessWidget {
  const ExperienceViewMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ExperienceTitle = "--- Where I've Worked ---"
        .text
        .white
        .xl
        .lineHeight(1)
        .size(context.isMobile ? 15 : 20)
        .bold
        .make()
        .shimmer();
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Container(
        color: Coolors.primaryColor,
        width: 600,
        height: 600,
        child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0,10,0,10),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: ExperienceTitle,
                ),
              ),
            ]
        ),
      ),
    );
  }
}
