import 'package:flutter/material.dart';
import 'package:satyam_website/Colors/colors.dart';
import 'package:velocity_x/velocity_x.dart';

class ExperienceViewDesktop extends StatelessWidget {
  const ExperienceViewDesktop({Key key}) : super(key: key);

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
        height: 635,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 40),
              child: Align(
                alignment: Alignment.center,
                child: ExperienceTitle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
