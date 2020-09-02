import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:satyam_website/Colors//colors.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class HeaderScreen extends StatelessWidget {
  const HeaderScreen({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final nameWidget = "Satyam\nGoyal."
        .text
        .white
        .xl6
        .lineHeight(1)
        .size(context.isMobile ? 15 : 20)
        .bold
        .make()
        .shimmer();
    return Container(
      width: 600,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (context.isMobile) 50.heightBox else 10.heightBox,
            CustomAppBar().shimmer(primaryColor: Coolors.accentColor),
            SizedBox(
              height: 20,
            ),
              nameWidget,
            SizedBox(
              height: 30,
            ),
            VxBox()
                .color(Coolors.accentColor)
                .size(60, 10)
                .make()
                .px4()
                .shimmer(primaryColor: Coolors.accentColor),
            SizedBox(
              height: 20,
            ),
    SocialAccounts(),
          ],
        ),
      ),
    );
  }
}

class IntroductionWidget extends StatelessWidget {
  const IntroductionWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        [
          " - Introduction".text.gray500.widest.sm.make(),
          10.heightBox,
          "Blah Blah Blah Blah Blah"
              .text
              .white
              .xl3
              .maxLines(5)
              .make()
              .w(context.isMobile
              ? context.screenWidth
              : context.percentWidth * 40),
          20.heightBox,
        ].vStack(),
        RaisedButton(
          onPressed: () {
            launch("https://mtechviral.com");
          },
          hoverColor: Vx.purple700,
          shape: Vx.roundedSm,
          color: Coolors.accentColor,
          textColor: Coolors.primaryColor,
          child: "Visit mtechviral.com".text.make(),
        ).h(50)
      ],
      // crossAlignment: CrossAxisAlignment.center,
      alignment: MainAxisAlignment.spaceEvenly,
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      AntDesign.codesquare,
      size: 50,
      color: Coolors.accentColor,
    );
  }
}



class SocialAccounts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return [
      Icon(
        AntDesign.twitter,
        color: Colors.white,
      ).mdClick(() {
        launch("https://twitter.com/imthepk");
      }).make(),
      20.widthBox,
      Icon(
        AntDesign.instagram,
        color: Colors.white,
      ).mdClick(() {
        launch("https://instagram.com/codepur_ka_superhero");
      }).make(),
      20.widthBox,
      Icon(
        AntDesign.linkedin_square,
        color: Colors.white,
      ).mdClick(() {
        launch("https://youtube.com/mtechviral");
      }).make(),
      20.widthBox,
      Icon(
        AntDesign.github,
        color: Colors.white,
      ).mdClick(() {
        launch("https://github.com/iampawan");
      }).make()
    ].hStack();
  }
}
