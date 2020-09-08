import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyPicAboutDesktop extends StatelessWidget {
  const MyPicAboutDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(60, 0, 0, 10),
      child: Row(
        children: [
          if (context.isMobile) 50.heightBox else 10.heightBox,
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(height: 500, width: 300, child: MyPicWidget()),
          ),
        ],
      ),
    );
  }
}

class MyPicWidget extends StatelessWidget {
  const MyPicWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image(
        image: new AssetImage("assets/MyPic.jpeg"),
        height: 150,
        width: 100,
        fit: BoxFit.cover,
      ),
    );
  }
}
