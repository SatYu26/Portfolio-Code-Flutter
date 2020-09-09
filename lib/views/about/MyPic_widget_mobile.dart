import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyPicAboutMobile extends StatelessWidget {
  const MyPicAboutMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(50, 10, 0, 0),
      child: Row(
        children: [
          //          if (context.isMobile) 50.heightBox else 10.heightBox,
          SizedBox(height: 300, width: 300, child: MyPicWidget()),
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
