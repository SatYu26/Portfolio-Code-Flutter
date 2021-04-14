import 'package:flutter/material.dart';
import 'package:satyam_website/Colors/colors.dart';
import 'package:satyam_website/views/about/MyPic_widget_mobile.dart';
import 'package:satyam_website/views/about/about_view_intro_mobile.dart';
import 'package:velocity_x/velocity_x.dart';

class AboutContentMobile extends StatelessWidget {
  const AboutContentMobile({Key key}) : super(key: key);

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
      height: MediaQuery.of(context).size.height*2.0,
      child: ListView(
//          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          addAutomaticKeepAlives: true,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0,10,0,10),
              child: Align(
                alignment: Alignment.topCenter,
                child: AboutTitle,
              ),
            ),
            Align(
                alignment: Alignment.center,
                child: MyPicAboutMobile()
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20,0,20,0),
              child: IntroductionAboutMobile(),
            ),
          ]
      ),
    );
  }
}
