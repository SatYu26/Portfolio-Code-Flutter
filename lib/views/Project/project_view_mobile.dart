import 'package:flutter/material.dart';
import 'package:satyam_website/widgets/method/method.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:satyam_website/views/Project/FeatureProjectMobile.dart';

class ProjectViewMobile extends StatelessWidget {
  const ProjectViewMobile({Key key}) : super(key: key);

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
        height: 4250,
        child: ListView(
//          shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            addAutomaticKeepAlives: true,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: ProjectTitle,
                ),
              ),
              Projects(),
            ]),
      ),
    );
  }
}

class Projects extends StatelessWidget {
  Method method = Method();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    return Column(
        children: [
          SizedBox(
            height: size.height * 0.07,
          ),

          MobileProject(
            ontab: () {
              method.launchURL(
                  "https://github.com/SatYu26/Github-Contribution-Hack");
            },
            image: "assets/git.png",
            projectname: 'GitHub Contribution Hack',
          ),

          SizedBox(
            height: size.height * 0.07,
          ),

          MobileProject(
            ontab: () {
              method.launchURL(
                  "https://github.com/SatYu26/Hand-Gesture-Classifier-With-Tensorflow.js");
            },
            image: "assets/tfjs.png",
            projectname: 'Hand Gesture Classifier',
          ),

          SizedBox(
            height: size.height * 0.07,
          ),

          MobileProject(
            ontab: () {
              method.launchURL(
                  "https://marketplace.visualstudio.com/items?itemName=Satyu.wolverine");
            },
            image: "assets/wolverine.png",
            projectname: 'Wolverine',
          ),

          SizedBox(
            height: size.height * 0.07,
          ),

          MobileProject(
            ontab: () {
              method.launchURL(
                  "https://github.com/SatYu26/Fashion-Classifier-With-Tensorflow.js");
            },
            image: "assets/fashion.jpg",
            projectname: 'Fashion Classifier',
          ),

          SizedBox(
            height: size.height * 0.07,
          ),

          MobileProject(
            ontab: () {
              method.launchURL(
                  "https://github.com/SatYu26/URL-Shortener");
            },
            image: "assets/url.jpg",
            projectname: 'URL Shortener',
          ),

          SizedBox(
            height: size.height * 0.07,
          ),

          MobileProject(
            ontab: () {
              method.launchURL(
                  "https://github.com/SatYu26/SRM-WiFi-Auto-Login");
            },
            image: "assets/wifi.jpg",
            projectname: 'SRM WiFi Auto Login',
          ),

          SizedBox(
            height: size.height * 0.07,
          ),

          MobileProject(
            ontab: () {
              method.launchURL(
                  "https://github.com/SatYu26/Expression-Tracker");
            },
            image: "assets/expressions.png",
            projectname: 'Expression Tracker',
          ),

          SizedBox(
            height: size.height * 0.07,
          ),

          MobileProject(
            ontab: () {
              method.launchURL(
                  "https://github.com/SatYu26/Handwriting-Classifier-With-Tensorflow.js");
            },
            image: "assets/hw.png",
            projectname: 'Handwriting Classifier',
          ),

          SizedBox(
            height: size.height * 0.07,
          ),

          MobileProject(
            ontab: () {
              method.launchURL(
                  "https://github.com/SatYu26/Motion-Detector");
            },
            image: "assets/motion.png",
            projectname: 'Motion Detector',
          ),

          SizedBox(
            height: size.height * 0.07,
          ),

          MobileProject(
            ontab: () {
              method.launchURL(
                  "https://github.com/SatYu26/Friday");
            },
            image: "assets/Friday.png",
            projectname: 'Friday',
          ),

          SizedBox(
            height: size.height * 0.07,
          ),

          MobileProject(
            ontab: () {
              method.launchURL(
                  "https://github.com/SatYu26/Face-Track");
            },
            image: "assets/face-track.jpg",
            projectname: 'Face Track',
          ),

          SizedBox(
            height: size.height * 0.07,
          ),

          MobileProject(
            ontab: () {
              method.launchURL(
                  "https://github.com/SatYu26/Face-Recognition-Model-Version2");
            },
            image: "assets/faceRecog.jpg",
            projectname: 'Face Recognition Model',
          ),

          SizedBox(
            height: size.height * 0.07,
          ),

          MobileProject(
            ontab: () {
              method.launchURL(
                  "https://github.com/SatYu26/Invisibility-Cloak");
            },
            image: "assets/InvisibilityCloak.jpg",
            projectname: 'Invisibility Cloak',
          ),
        ]
    );
  }
}
