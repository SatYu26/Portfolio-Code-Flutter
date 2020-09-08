import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';


class IntroductionAboutDesktop extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width*0.6;
    double c_height = MediaQuery.of(context).size.height*0.7;
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

  @override
  Widget build(BuildContext context) {
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
          AboutintroWidget,// crossAlignment: CrossAxisAlignment.center,
        ]
    );
  }
}