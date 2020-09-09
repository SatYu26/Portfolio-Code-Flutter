import 'package:flutter/material.dart';
import 'package:satyam_website/widgets/custom_text/CustomText.dart';
import 'package:velocity_x/velocity_x.dart';


class IntroductionAboutMobile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width*0.6;
    double c_height = MediaQuery.of(context).size.height*1.9;
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 0, 5, 0),
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

  Widget technology(BuildContext context, String text) {
    return Row(
      children: [
        Icon(
          Icons.skip_next,
          color: Color(0xff64FFDA).withOpacity(0.6),
          size: 14.0,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.01,
        ),
        Text(
          text,
          style: TextStyle(
            color: Color(0xff717C99),
            letterSpacing: 1.75,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final AboutintroWidget ="I am a 3rd Year undergraduate from SRM Institute of Science and technology, Kattankulatur.\n"
        "20 years of living a comical life!\n"
        "Creatives and Photography Lead at Developer Student Clubs (DSC) SRM.\n"
        "I am Your friendly Neighbourhood Developer  and a Learning Enthusiast,  who is obsessed with the idea of improving himself and wants a platform to grow and excel.\n"
        "I Love Android Development, xD.\n\n"
        "=> I’m currently sleeping 😴 or working on my laptop 👨‍💻\n"
        "=> I’m good in Android Development and currently learning Web Development With Flutter💪.\n"
        "=> I’m looking to collaborate on Machine Learning & Python 🐍 projects.\n"
        "=> I Love Machine Learning and Open CV🌐\n"
        "=> Ask me about why do I think aliens 👽 exist.\n"
        "=> Fun fact: My smartness 💡 lies in my laziness 😴\n"
        .text
        .white
        .xl2
        .make()
        .w(context.isMobile
        ? context.screenWidth
        : context.percentWidth * 40);
    return ListView(
        children: <Widget>[
          AboutintroWidget,
          CustomText(
            text:
            "Here are a few technologies I've been working with recently:\n\n",
            textsize: 16.0,
            color: Color(0xff828DAA),
            fontWeight: FontWeight.w500,
            letterSpacing: 0.75,
          ),// crossAlignment: CrossAxisAlignment.center,
          Container(
            height: size.height*0.25,
            width: size.width,
            //   color: Colors.redAccent,
            child: Row(
              children: [
                Container(
                  width: size.width * 0.40,
                  height: size.height*0.25,
                  child: Column(
                    children: [
                      technology(context, "Dart"),
                      technology(context, "Flutter"),
                      technology(context, "Firebase"),
                      technology(context, "UI/UX"),
                      technology(context, "Tensorflow JS"),
                    ],
                  ),
                ),
                Container(
                  width: size.width * 0.50,
                  height: size.height*0.25,
                  child: Column(
                    children: [
                      technology(context, "Python"),
                      technology(context, "HTML & (S)CSS"),
                      technology(context, "Open CV"),
                      technology(context, "Machine Learning"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ]
    );
  }
}