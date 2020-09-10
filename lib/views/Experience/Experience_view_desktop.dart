import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:satyam_website/Colors/colors.dart';
import 'package:satyam_website/views/Experience/experiences_content_desktop.dart';
import 'package:satyam_website/widgets/custom_text/CustomText.dart';
import 'package:steps/steps.dart';
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
    var size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Container(
        color: Color(0xff0A192F),
        width: 600,
        height: 635,
        child: Stack(
          fit: StackFit.expand,
          children: [
            ExperiencePictureWidget(),
            ListView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: ExperienceTitle,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.07,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom:15),
                  child: ExperiencesDesktop(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class ExperiencePictureWidget extends StatelessWidget {
  const ExperiencePictureWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 35, 0),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.7,
          width: MediaQuery.of(context).size.width * 0.30,
          child: Image(
//                      fit: BoxFit.cover,
            image: AssetImage("assets/Programmer.png"),
          ),
        ),
      ),
    );
  }
}
