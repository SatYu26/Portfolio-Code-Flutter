import 'package:flutter/material.dart';
import 'package:steps/steps.dart';

class ExperiencesMobile extends StatelessWidget {
  const ExperiencesMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      height: MediaQuery.of(context).size.height*0.6,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.topCenter,
      child: Steps(
        direction: Axis.vertical,
        size: 20.0,
        path: {'color': Colors.lightBlue.shade200, 'width': 2.75},
        steps: [
          {
            'color': Color(0xff64FFDA),
            'background': Colors.indigo,
            'label': '🎓',
            'content': Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "SRM Institute of Science and Technology, Kattankulathur (INDIA)",
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 6.0,
                ),
                Text(
                  "I am currently pursuing Bachelor's Degree in Electrical and Electronics Engineering \nSRM Institute of Science and Technology, Kattankulathur.\n",
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Color(0xffCCD6F6).withOpacity(0.5),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "2018 - Present",
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Color(0xffCCD6F6).withOpacity(0.5),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          },
          {
            'color': Color(0xff64FFDA),
            'background': Colors.indigo,
            'label': '🎥',
            'content': Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Developer Student Clubs (DSC) SRM",
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 6.0,
                ),
                Text(
                  "I am Currently Lead of Creatives and Photography Domain in DSC Campus Club at SRM.\n",
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Color(0xffCCD6F6).withOpacity(0.5),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "August - 2019 - Present ",
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Color(0xffCCD6F6).withOpacity(0.5),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          },
          {
            'color': Color(0xff64FFDA),
            'background': Colors.indigo,
            'label': '🌟',
            'content': Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Microsoft Learn Student Ambassador (BETA)",
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 6.0,
                ),
                Text(
                  "Hosted a 2 hours Hands On Workshop on Understanding Open CV and Gestures Control Car Racing Game.\nGained leadership experience, access to resources such as Microsoft Learn and Azure credits,\nand a diverse Microsoft network to develop their technical career.\n"
                      "Finished learning paths based on AI and many more and gained knowledge and skills.\nOn-campus student leader with a passion for sharing technology with classmates and\nintroduce them to valuable student benefits like Microsoft Azure.\n",
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Color(0xffCCD6F6).withOpacity(0.5),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "January 2020 - Present ",
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Color(0xffCCD6F6).withOpacity(0.5),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          },
          {
            'color': Color(0xff64FFDA),
            'background': Colors.indigo,
            'label': "📱",
            'content': Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Robic Rufarm",
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 6.0,
                ),
                Text(
                  "As Application Developer my key responsibilities include:-\n"
                      "- Development of product and customization implementation with Data analytics platform.\n"
                      "- Supporting the pre-sales process in areas such as demonstrations & research and post-sales,\nas part of a Support Helpdesk Offering whilst being involved with a variety of client projects and Market Research.\n"
                      "- Working on the internal development projects.\n"
                      "-Design and develop a web application and an Android application from scratch.\n"
                      "The purpose of these applications is to monitor and interact with the Aerator system in the aquaculture farms.\n",
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Color(0xffCCD6F6).withOpacity(0.5),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "April - 2020 - May - 2020 ",
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Color(0xffCCD6F6).withOpacity(0.5),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          },
          {
            'color': Color(0xff64FFDA),
            'background': Colors.indigo,
            'label': '👷🏻‍♀️',
            'content': Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "UltraTech Cement - Aditya Birla Group",
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 6.0,
                ),
                Text(
                  "I worked as Summer Intern for Industrial Training In Electrical and Electronics Department.\n",
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Color(0xffCCD6F6).withOpacity(0.5),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "May - 2019 - July - 2019 ",
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Color(0xffCCD6F6).withOpacity(0.5),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          },
          {
            'color': Color(0xff64FFDA),
            'background': Colors.indigo,
            'label': '🎥',
            'content': Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "GeeksForGeeks SRM",
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 6.0,
                ),
                Text(
                  "I am Currently Member of Creatives and Photography Domain in GeeksForGeeks Campus Club.\n",
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Color(0xffCCD6F6).withOpacity(0.5),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "August - 2020 - Present ",
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Color(0xffCCD6F6).withOpacity(0.5),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          },
          {
            'color': Color(0xff64FFDA),
            'background': Colors.indigo,
            'label': '💬',
            'content': Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "International Model United Nations",
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 6.0,
                ),
                Text(
                  "I worked as Official Campus Ambassador of International MUN.\n",
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Color(0xffCCD6F6).withOpacity(0.5),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "June - 2020 - July - 2020 ",
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Color(0xffCCD6F6).withOpacity(0.5),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          },
        ],
      ),
    );
  }
}
