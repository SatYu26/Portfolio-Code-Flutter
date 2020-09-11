import 'package:flutter/material.dart';
import 'package:satyam_website/views/Project/FeatureProjectInvertedWidget.dart';
import 'package:satyam_website/views/Project/FeatureProjectWidget.dart';
import 'package:satyam_website/widgets/custom_text/CustomText.dart';
import 'package:satyam_website/widgets/method/method.dart';
import 'package:velocity_x/velocity_x.dart';

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
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Container(
        color: Color(0xff0A192F),
        width: 600,
        height: 635,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 40),
              child: Align(
                alignment: Alignment.center,
                child: ProjectTitle,
              ),
            ),
            Projects(),
          ],
        ),
      ),
    );
  }
}


class Projects extends StatelessWidget {
  Method method = Method();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.04,
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
          tech3: "Web",
        ),

        FeatureProjectInverted(
          imagePath: "assets/git.png",
          ontab: () {
            method.launchURL(
                "https://github.com/SatYu26/Github-Contribution-Hack");
          },
          projectDesc:
          "A Program created to Hack of GitHub's Contribution Graph.",
          projectTitle: "GitHub Contribution Hack",
          tech1: "JavaScript",
          tech2: "Git",
          tech3: "GitHub",
        ),

        FeatureProject(
          imagePath: "assets/wolverine.png",
          ontab: () {
            method.launchURL(
                "https://marketplace.visualstudio.com/items?itemName=Satyu.wolverine");
          },
          projectDesc:
          "This is a Dark theme type extension for VS Code with some tweaks which will remind you of the night Sky (Wolverine).",
          projectTitle: "Wolverine",
          tech1: "VS Code",
          tech2: "Colour Theme",
          tech3: "CSS",
        ),

        FeatureProjectInverted(
          imagePath: "assets/fashion.jpg",
          ontab: () {
            method.launchURL(
                "https://github.com/SatYu26/Fashion-Classifier-With-Tensorflow.js");
          },
          projectDesc:
          "It is a browser based Fashion classifier Created Using Tensorflow.js.",
          projectTitle: "Fashion Classifier",
          tech1: "JavaScript",
          tech2: "Tensorflow",
          tech3: "Web",
        ),

        FeatureProject(
          imagePath: "assets/url.jpg",
          ontab: () {
            method.launchURL(
                "https://github.com/SatYu26/URL-Shortener");
          },
          projectDesc:
          "This Is an Online URL SHORETNER webite created entirely on FLASK Framework.",
          projectTitle: "URL Shortener",
          tech1: "Flask",
          tech2: "Python",
          tech3: "Web",
        ),

        FeatureProjectInverted(
          imagePath: "assets/wifi.jpg",
          ontab: () {
            method.launchURL(
                "https://github.com/SatYu26/SRM-WiFi-Auto-Login");
          },
          projectDesc:
          "This is a Auto login for SRM wifi connection made Using Selenium driver.",
          projectTitle: "SRM WiFi Auto Login",
          tech1: "Web Drivers",
          tech2: "Python",
          tech3: "Automation",
        ),

        FeatureProject(
          imagePath: "assets/expressions.png",
          ontab: () {
            method.launchURL(
                "https://github.com/SatYu26/Expression-Tracker");
          },
          projectDesc:
          "Checking facial expressions using Open CV.",
          projectTitle: "Expression Tracker",
          tech1: "Open CV",
          tech2: "Python",
          tech3: "ML",
        ),

        FeatureProjectInverted(
          imagePath: "assets/hw.png",
          ontab: () {
            method.launchURL(
                "https://github.com/SatYu26/Handwriting-Classifier-With-Tensorflow.js");
          },
          projectDesc:
          "It is a browser based Handwriting classifier Created Using Tensorflow.js.",
          projectTitle: "Handwriting Classifier",
          tech1: "JavaScript",
          tech2: "Tensorflow",
          tech3: "Web",
        ),

        FeatureProject(
          imagePath: "assets/motion.png",
          ontab: () {
            method.launchURL(
                "https://github.com/SatYu26/Motion-Detector");
          },
          projectDesc:
          "Python/OpenCV script that detect motion on webcam and allow record it to a file and plot a graph for proper Visualization.",
          projectTitle: "Motion Detector",
          tech1: "Open CV",
          tech2: "Python",
          tech3: "ML",
        ),

        FeatureProjectInverted(
          imagePath: "assets/Friday.png",
          ontab: () {
            method.launchURL(
                "https://github.com/SatYu26/Friday");
          },
          projectDesc:
          "An AI personal assistant is a piece of software that understands verbal or written commands and completes task assigned by the client. It is an example of weak AI that is it can only execute and perform quest designed by the user.",
          projectTitle: "Friday",
          tech1: "Python",
          tech2: "Open CV",
          tech3: "Voice Assistant",
        ),

        FeatureProject(
          imagePath: "assets/face-track.jpg",
          ontab: () {
            method.launchURL(
                "https://github.com/SatYu26/Face-Track");
          },
          projectDesc:
          "Controlling Keyboard using facial expressions.",
          projectTitle: "Face Track",
          tech1: "Open CV",
          tech2: "Python",
          tech3: "ML",
        ),

        FeatureProjectInverted(
          imagePath: "assets/faceRecog.jpg",
          ontab: () {
            method.launchURL(
                "https://github.com/SatYu26/Face-Recognition-Model-Version2");
          },
          projectDesc:
          "It is a Face Recognition Model which can Recognize the User.",
          projectTitle: "Face Recognition Model",
          tech1: "Open CV",
          tech2: "Python",
          tech3: "ML",
        ),

        FeatureProject(
          imagePath: "assets/InvisibilityCloak.jpg",
          ontab: () {
            method.launchURL(
                "https://github.com/SatYu26/Invisibility-Cloak");
          },
          projectDesc:
          "The algorithm is very similar in principle to green screening. But unlike green screening where we remove the background, in this application, we remove the foreground! This [code] turns a red colour cloth into an invisibility cloak.",
          projectTitle: "Invisibility Cloak",
          tech1: "Open CV",
          tech2: "Python",
          tech3: "Image Processing",
        ),
      ],
    );
  }
}
