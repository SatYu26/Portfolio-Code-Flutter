import 'package:flutter/material.dart';
import 'package:satyam_website/Colors/colors.dart';
import 'package:satyam_website/views/about/MyPic_widget_desktop.dart';
import 'package:satyam_website/views/about/about_view_intro_desktop.dart';
import 'package:velocity_x/velocity_x.dart';

class AboutContentDesktop extends StatelessWidget {
  const AboutContentDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AboutTitle = "--- About Me ---"
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
        color: Color(0xff0A192F),
        width: 600,
        height: 635,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0,10,0,40),
              child: Align(
                  alignment: Alignment.center,
                  child: AboutTitle,
              ),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MyPicAboutDesktop(),
                  Expanded(
                    child: Center(
                      child: IntroductionAboutDesktop(),
                    ),
                  )
                ]),
          ],
        ),
      ),
    );
  }
}
