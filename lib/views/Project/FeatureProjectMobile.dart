import 'package:flutter/material.dart';
import 'package:satyam_website/Colors/colors.dart';
import 'package:satyam_website/widgets/custom_text/CustomText.dart';

class MobileProject extends StatelessWidget {
  final Function ontab;
  // final String image;
  final String projectname;
  final Function link;

  MobileProject({this.ontab, this.link, this.projectname});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: null,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5.0),
          child: Container(
            color: Colors.teal,
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width * 0.7,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: Icon(
                      Icons.folder_outlined,
                      color: Colors.tealAccent,
                    ),
                    onPressed: ontab,
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    icon: Icon(
                      Icons.link_outlined,
                      color: Colors.tealAccent,
                    ),
                    onPressed: link,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: CustomText(
                    text: projectname,
                    textsize: 16.0,
                    color: Colors.black54,
                    letterSpacing: 0.75,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
