import 'package:flutter/material.dart';
import 'package:satyam_website/widgets/navigation_bar/navigation_bar.dart';
import 'package:satyam_website/widgets/centered_view/centered_view.dart';
import 'package:satyam_website/widgets/my_details/my_details.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:satyam_website/Colors/colors.dart';

class HomeView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Coolors.primaryColor,
      child: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          PictureWidget(),
          CenteredView(
            child: new Column(
                children: <Widget>[
                  NavigationBar(),
                  Expanded(
                    child: Row(children: [
                      HeaderScreen(),
                    ]),
                  ),
                ]
            ),
          ),
        ],
      ),
    );
  }
}

class PictureWidget extends StatelessWidget {
  const PictureWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      image: new AssetImage("assets/BG.jpeg"),
      fit: BoxFit.cover,
      color: Colors.black87.withOpacity(0.7),
      colorBlendMode: BlendMode.darken,
    );
  }
}
