import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyPicAboutDesktop extends StatelessWidget {
  const MyPicAboutDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Row(
        children: [
          if (context.isMobile) 50.heightBox else 10.heightBox,
          Align(
            alignment: Alignment.centerLeft,
//            child: SizedBox(height: 400, width: 400, child: MyPicWidget()),
          child: MyPicWidget(),
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
    var size = MediaQuery.of(context).size;
    return Image(
      height: size.height,
      fit: BoxFit.fitHeight,
      image: AssetImage("assets/MyPic.png"),
    );
  }
}
