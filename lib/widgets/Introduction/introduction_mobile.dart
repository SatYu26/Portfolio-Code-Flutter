import 'package:flutter/material.dart';
import 'package:satyam_website/Colors/colors.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';


class IntroductionMobile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width*0.7;
    return Container(
      height: 200,
      width: c_width,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(child: Introduction()),
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
    final introWidget ="Blah Blah Blah Blah Blah"
        .text
        .white
        .xl2
        .maxLines(5)
        .make()
        .w(context.isMobile
        ? context.screenWidth
        : context.percentWidth * 40);
    return ListView(
        children: <Widget>[
          " - Introduction".text.gray500.widest.sm.make(),
          SizedBox(
            height: 10,
          ),
          introWidget,
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              LimitedBox(
                maxWidth: 60,
                child: VxBox()
                    .color(Coolors.accentColor)
                    .size(60, 10)
                    .make()
                    .px4()
                    .shimmer(primaryColor: Coolors.accentColor),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              LimitedBox(
                maxWidth: 150,
                child: RaisedButton(
                  onPressed: () {
                    launch("https://mtechviral.com");
                  },
                  hoverColor: Vx.purple700,
                  shape: Vx.roundedSm,
                  color: Coolors.accentColor,
                  textColor: Coolors.primaryColor,
                  child: "Resume".text.make(),
                ).h(50),
              ),
            ],
          ),

          // crossAlignment: CrossAxisAlignment.center,
        ]
    );
  }
}