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
    return Container(
      // color: Color(0xff0A192F),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*0.89,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Align(
              // alignment: Alignment.centerRight,
              child: MyPicAboutDesktop()),
          ListView(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                child: Align(
                  alignment: Alignment.center,
                  child: AboutTitle,
                ),
              ),
              Align(alignment:Alignment.centerRight , child: IntroductionAboutDesktop(),),
              // Row(
              //     mainAxisAlignment: MainAxisAlignment.end,
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     children: [
              //       IntroductionAboutDesktop(),
              //     ]),
            ],
          ),
        ],
      ),
    );
  }
}
