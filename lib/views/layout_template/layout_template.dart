import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:satyam_website/locator.dart';
import 'package:satyam_website/nav_drawer/navigation_drawer.dart';
import 'package:satyam_website/routing/route_names.dart';
import 'package:satyam_website/routing/router.dart';
import 'package:satyam_website/services/navigation_service.dart';
import 'package:satyam_website/widgets/centered_view/centered_view.dart';
import 'package:satyam_website/widgets/navigation_bar/navigation_bar.dart';
import 'package:satyam_website/Colors/colors.dart';


class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? NavigationDrawer()
            : null,
        resizeToAvoidBottomInset: false,
        backgroundColor: Coolors.primaryColor,
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            PictureWidget(),
            CenteredView(
              child: Column(children: <Widget>[
                CenteredView(child: NavigationBar()),
                Expanded(
                  child: Navigator(
                    key: locator<NavigationService>().navigatorKey,
                    onGenerateRoute: generateRoute,
                    initialRoute: HomeRoute,
                  ),
                )
              ]),
            ),
          ],
        ),
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