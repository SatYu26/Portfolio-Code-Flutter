import 'package:flutter/material.dart';
import 'package:satyam_website/views/home/name_widget/name_widget.dart';
import 'package:satyam_website/views/home/Introduction/introduction.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
      NameWidget(),
      Expanded(
        child: Center(
          child: IntroductionWidget(),
        ),
      )
    ]);
  }
}
