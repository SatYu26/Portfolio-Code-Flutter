import 'package:flutter/material.dart';
import 'package:satyam_website/Colors/colors.dart';
import 'package:satyam_website/views/Experience/experiences_content_mobile.dart';
import 'package:satyam_website/widgets/custom_text/CustomText.dart';
import 'package:steps/steps.dart';
import 'package:velocity_x/velocity_x.dart';

class ExperienceViewMobile extends StatelessWidget {
  const ExperienceViewMobile({Key? key}) : super(key: key);

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
//      height: MediaQuery.of(context).size.height * 1.14,
//      width: MediaQuery.of(context).size.width - 100,
        //color: Colors.tealAccent,
        color: Color(0xff0A192F),
        width: 600,
        height: 800,
        child: ListView(
//          shrinkWrap: true,
//          physics: ClampingScrollPhysics(),
          physics: NeverScrollableScrollPhysics(),
          addAutomaticKeepAlives: true,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Align(
                alignment: Alignment.topCenter,
                child: ExperienceTitle,
              ),
            ),
            Align(
              alignment: Alignment.center,
                child: ExperiencePictureWidget()),
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: ExperiencesMobile(),
            ),
          ],
        ),
      ),
    );
  }
}

class ExperiencePictureWidget extends StatelessWidget {
  const ExperiencePictureWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width,
      child: Image(
//                      fit: BoxFit.cover,
        image: AssetImage("assets/Programmer.png"),
      ),
    );
  }
}
