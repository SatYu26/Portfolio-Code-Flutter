import 'package:flutter/material.dart';
import 'package:satyam_website/widgets/navigation_bar/navigation_bar.dart';
import 'package:satyam_website/widgets/centered_view/centered_view.dart';
import 'package:satyam_website/widgets/my_details/my_details.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _HomeView();
  }
}

class _HomeView extends State<HomeView> with SingleTickerProviderStateMixin {
  AnimationController _iconAnimationController;
  Animation<double> _iconAnimation;

  @override
  void initState() {
    super.initState();
    _iconAnimationController = new AnimationController(
      vsync: this,
      duration: new Duration(milliseconds: 500),
    );
    _iconAnimation = new CurvedAnimation(
      parent: _iconAnimationController,
      curve: Curves.easeOut,
    );
    _iconAnimation.addListener(() => this.setState(() {}));
    _iconAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image(
            image: new AssetImage("assets/BG.jpeg"),
            fit: BoxFit.cover,
            color: Colors.black87.withOpacity(0.7),
            colorBlendMode: BlendMode.darken,
          ),
          new Container(
            child: CenteredView(
              child: Column(
                children: <Widget>[
                  NavigationBar(),
                  Expanded(
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          MyDetails(),
                        ]),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
