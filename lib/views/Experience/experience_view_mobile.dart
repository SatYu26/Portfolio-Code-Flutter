import 'package:flutter/material.dart';
import 'package:satyam_website/Colors/colors.dart';
import 'package:satyam_website/widgets/custom_text/CustomText.dart';
import 'package:steps/steps.dart';
import 'package:velocity_x/velocity_x.dart';

class ExperienceViewMobile extends StatelessWidget {
  const ExperienceViewMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ExperienceTitle = "--- Where I've Worked ---"
        .text
        .white
        .xl
        .lineHeight(1)
        .size(context.isMobile ? 15 : 20)
        .bold
        .make()
        .shimmer();
    var size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Container(
//      height: MediaQuery.of(context).size.height * 1.14,
//      width: MediaQuery.of(context).size.width - 100,
        //color: Colors.tealAccent,
        color: Color(0xff0A192F),
        width: 600,
        height: 600,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0,10,0,10),
              child: Align(
                alignment: Alignment.topCenter,
                child: ExperienceTitle,
              ),
            ),
            SizedBox(
              height: size.height * 0.07,
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width - 100,
              alignment: Alignment.topCenter,
              child: Steps(
                direction: Axis.vertical,
                size: 20.0,
                path: {'color': Colors.lightBlue.shade200, 'width': 2.75},
                steps: [
                  {
                    'color': Color(0xff64FFDA),
                    'background': Colors.indigo,
                    'label': '*',
                    'content': Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Sandip Institute Of Engineering & Management Nashik",
                          style: TextStyle(
                            fontSize: 22.0,
                            color: Color(0xffCCD6F6),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          "I am currently pursuing Bachelor's Degree in Computer Science and Engineering \nat Savitribai Phule Pune University",
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Color(0xffCCD6F6).withOpacity(0.5),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "2016 - Present ",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Color(0xffCCD6F6).withOpacity(0.5),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  },
                  {
                    'color': Color(0xff64FFDA),
                    'background': Colors.indigo,
                    'label': '*',
                    'content': Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Flutter + Dart Development Winter Bootcamp",
                          style: TextStyle(
                            fontSize: 22.0,
                            color: Color(0xffCCD6F6),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          "The Complete 2020 Flutter + Dart Winter Development Bootcamp at LCO Training Center,\nJaipur, Rajasthan (302017), Covering all the fundamental concepts for Flutter development",
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Color(0xffCCD6F6).withOpacity(0.5),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "Dec - 2019 to Feb - 2020 ",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Color(0xffCCD6F6).withOpacity(0.5),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  },
                  {
                    'color': Color(0xff64FFDA),
                    'background': Colors.indigo,
                    'label': '*',
                    'content': Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Freelancer - Flutter | Dart Mobile App Developer | UI - UX Designer",
                          style: TextStyle(
                            fontSize: 22.0,
                            color: Color(0xffCCD6F6),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          "Flutter Developer and experienced programmer with an extensive history of designing and coding \nsolutions. Skilled in Google’s Flutter/Dart, Firebase App and Web development on a global scale. If you \nare looking for someone that you can trust that will complete your app on time and on budget, then \nplease contact me. I have been developing software for 1+ years and take pride in everything I do.",
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Color(0xffCCD6F6).withOpacity(0.5),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "Oct 2019 - Present ",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Color(0xffCCD6F6).withOpacity(0.5),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  },
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
