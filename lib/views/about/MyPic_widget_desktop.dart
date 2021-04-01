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
    return Container(
        height: size.height / 1.5,
        width: size.width/2.5,
        // color: Colors.white,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: size.height * 0.02,
              left: size.width * 0.06,
              child: Card(
                color: Color(0xff61F9D5),
                child: Container(
                  margin: EdgeInsets.all(2.75),
                  height: size.height / 2,
                  width: size.width / 5,
                  color: Color(0xff0A192F),
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Container(
                height: size.height / 2,
                width: size.width / 5,
                color: Colors.black54,
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/MyPic.jpeg"),
                ),
              ),
            ),
          ],
        ),
      );
  }
}
