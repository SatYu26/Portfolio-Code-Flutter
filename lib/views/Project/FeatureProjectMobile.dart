import 'package:flutter/material.dart';
import 'package:satyam_website/widgets/custom_text/CustomText.dart';

class MobileProject extends StatelessWidget {
  final Function ontab;
  final String image;
  final String projectname;

  MobileProject({this.ontab, this.image, this.projectname});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: ontab,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.36,
                width: MediaQuery.of(context).size.width * 0.8,
                child: Image(
                  fit: BoxFit.fill,
                  image: AssetImage(image),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: CustomText(
                text: projectname,
                textsize: 16.0,
                color: Colors.white.withOpacity(0.4),
                letterSpacing: 0.75,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
