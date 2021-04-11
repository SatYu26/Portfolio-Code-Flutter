import 'package:flutter/material.dart';
import 'package:satyam_website/Colors/colors.dart';
import 'package:satyam_website/widgets/custom_text/CustomText.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:satyam_website/extensions/hover_extensions.dart';

class IntroductionTabletDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width * 0.5;
    double c_height = MediaQuery.of(context).size.height * 0.65;
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      width: c_width,
      height: c_height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
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
    final introWidget =
        "I am a 3rd Year undergraduate from SRM Institute of Science and technology, Kattankulatur.\n"
                "I am Your friendly Neighbourhood Developer  and a Learning Enthusiast,  who is obsessed with the idea of improving himself and wants a platform to grow and excel.\n"
                "I Love Android Development, xD."
            .text
            .white
            .xl2
            .maxLines(15)
            .make()
            .w(context.isMobile
                ? context.screenWidth
                : context.percentWidth * 40);
    return ListView(children: <Widget>[
      " - Introduction".text.gray500.widest.sm.make(),
      SizedBox(
        height: 10,
      ),
      CustomText(
        text: "I build things for the Android and web.",
        textsize: 40.0,
        color: Color(0xffCCD6F6).withOpacity(0.6),
        fontWeight: FontWeight.w700,
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
            maxWidth: 80,
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
                launch(
                    "https://drive.google.com/file/d/1P493KzFN0Kf6NrE98EglhZlqA9TR3tSi/view?usp=sharing");
              },
              hoverColor: Vx.purple700,
              shape: Vx.roundedSm,
              color: Coolors.accentColor,
              textColor: Coolors.primaryColor,
              child: "Resume".text.bold.make(),
            ).h(50),
          ).showCursorOnHover.moveUpOnHover,
        ],
      ), // crossAlignment: CrossAxisAlignment.center,
    ]);
  }
}
