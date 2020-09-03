import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:satyam_website/widgets/navigation_bar/navigation_bar.dart';
import 'package:satyam_website/widgets/centered_view/centered_view.dart';
import 'package:satyam_website/widgets/name_widget/name_widget.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:satyam_website/Colors/colors.dart';
import 'package:satyam_website/widgets/Introduction/introduction.dart';
import 'package:satyam_website/views/home/home_content_mobile.dart';
import 'package:satyam_website/views/home/home_content_desktop.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Coolors.primaryColor,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          PictureWidget(),
          CenteredView(
            child: Column(children: <Widget>[
              NavigationBar(),
              Expanded(
                child: ScreenTypeLayout(
                  mobile: HomeContentMobile(),
                  desktop: HomeContentDesktop(),
                ),
              )
            ]),
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
