import 'package:flutter/material.dart';
import 'package:satyam_website/Colors/colors.dart';
import 'package:satyam_website/views/Project/FeatureProjectInvertedWidget.dart';
import 'package:satyam_website/views/Project/FeatureProjectWidget.dart';
import 'package:satyam_website/widgets/method/method.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:satyam_website/extensions/hover_extensions.dart';

class ProjectViewDesktop extends StatelessWidget {
  const ProjectViewDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProjectTitle = "--- Some Things I've Built ---"
        .text
        .white
        .xl
        .lineHeight(1.3)
        .size(context.isMobile ? 15 : 20)
        .bold
        .make()
        .shimmer();
    return Container(
      // color: Color(0xff0A192F),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.88,
      child: Stack(
        fit: StackFit.expand,
        children: [
          // Padding(
          //   padding: const EdgeInsets.fromLTRB(0, 10, 0, 40),
          //   child: Align(
          //     alignment: Alignment.topCenter,
          //     child: ProjectTitle,
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Projects(),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: ProjectTitle,
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Projects extends StatelessWidget {
  Method method = Method();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ListView(
      children: [
        SizedBox(
          height: size.height * 0.04,
        ),
        FeatureProject(
          imagePath: "assets/cmP.png",
          ontab: () {
            method.launchURL("https://github.com/SatYu26/Catch-Me-Portfolio");
          },
          projectDesc: "A simple portfolio Website with some fun.",
          projectTitle: "Catch Me Portfolio",
          tech1: "JavaScript",
          tech2: "CSS",
          tech3: "HTML",
        ),
        FeatureProjectInverted(
          imagePath: "assets/Portfolio.png",
          ontab: () {
            method
                .launchURL("https://github.com/SatYu26/Portfolio-Code-Flutter");
          },
          projectDesc: "My Portfolio website created using Flutter",
          projectTitle: "Portfolio",
          tech1: "Flutter",
          tech2: "Dart",
          tech3: "Web Development",
        ),
        FeatureProject(
          imagePath: "assets/tfjs.png",
          ontab: () {
            method.launchURL(
                "https://github.com/SatYu26/Hand-Gesture-Classifier-With-Tensorflow.js");
          },
          projectDesc:
              "It is a browser based Rock, Paper and Scissor(Hand Gestures) classifier Created Using Tensorflow.js.",
          projectTitle: "Hand Gesture Classifier",
          tech1: "JavaScript",
          tech2: "Tensorflow",
          tech3: "ML",
        ),
        FeatureProjectInverted(
          imagePath: "assets/flash.png",
          ontab: () {
            method.launchURL("https://github.com/SatYu26/Flash-Type");
          },
          projectDesc: "A Fully Functioning Typing Speed Checker Website",
          projectTitle: "Flash Type",
          tech1: "React",
          tech2: "JavaScript",
          tech3: "CSS",
        ),
        FeatureProject(
          imagePath: "assets/wi.png",
          ontab: () {
            method.launchURL("https://github.com/SatYu26/WhatImage");
          },
          projectDesc:
              "A modern application that can classify images for you and will store the classification history.",
          projectTitle: "What Image",
          tech1: "React.js",
          tech2: "JavaScript",
          tech3: "Node.js",
        ),
        LimitedBox(
          maxWidth: 50,
          child: RaisedButton(
            onPressed: () {
              launch("https://github.com/SatYu26");
            },
            hoverColor: Vx.purple700,
            shape: Vx.roundedSm,
            color: Coolors.accentColor,
            textColor: Coolors.primaryColor,
            child: "View More".text.bold.make(),
          ).h(50).w(50),
        ).showCursorOnHover.moveUpOnHover,
      ],
    );
  }
}
