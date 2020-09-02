import 'package:flutter/material.dart';
import 'package:satyam_website/Colors/colors.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_icons/flutter_icons.dart';

class IntroductionWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Introduction(),
        ],
      ),
    );
  }
}

class Introduction extends StatelessWidget {
  const Introduction({
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
          child: "Resume".text.make(),
        ).h(50)
      ],
      // crossAlignment: CrossAxisAlignment.center,
      alignment: MainAxisAlignment.spaceEvenly,
    );
  }
}