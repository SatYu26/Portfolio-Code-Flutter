import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:satyam_website/views/Project/project_view_desktop.dart';
import 'package:satyam_website/views/Project/project_view_mobile.dart';


class ProjectView extends StatelessWidget {
  const ProjectView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ScreenTypeLayout(
        mobile: ProjectViewMobile(),
        desktop: ProjectViewDesktop(),
      ),
    );
  }
}