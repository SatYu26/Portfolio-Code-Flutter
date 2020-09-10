import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ProjectViewMobile extends StatelessWidget {
  const ProjectViewMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProjectTitle = "--- Some Things I've Built ---"
        .text
        .white
        .xl
        .lineHeight(1.3)
        .size(context.isMobile ? 15 : 20)
        .bold
        .make()
        .shimmer();
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Container(
        color: Color(0xff0A192F),
        width: 600,
        height: 1600,
        child: ListView(
//          shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            addAutomaticKeepAlives: true,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: ProjectTitle,
                ),
              ),
            ]),
      ),
    );
  }
}
