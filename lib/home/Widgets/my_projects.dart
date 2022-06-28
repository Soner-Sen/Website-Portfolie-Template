import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:fluttershow/Blueprints/my_projects_data.dart';
import 'package:fluttershow/Blueprints/showcase_data.dart';
import 'package:fluttershow/responsive.dart';

import '../../const_values.dart';

// The MyProject widget shows my projects and clicking on a project opens an extension with an ImageSlider

class MyProject extends StatelessWidget {
  const MyProject({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(DEFAULT_PADDING),
          child: Text(
            'Recent Projects',
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        const Responsive(
          mobile: ProjectsGridView(crossAxisCount: 1, childAspectRatio: 2),
          mobileLarge: ProjectsGridView(crossAxisCount: 2),
          tablet: ProjectsGridView(childAspectRatio: 1.1),
          desktop: ProjectsGridView(),
        ),
      ],
    );
  }
}

class ProjectsGridView extends StatelessWidget {
  const ProjectsGridView({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: my_projects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: DEFAULT_PADDING,
        mainAxisSpacing: DEFAULT_PADDING,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) => ProjectCard(
        project: my_projects[index],
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(DEFAULT_PADDING),
      color: SECONDARY_COLOR,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.fade,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          const Spacer(),
          Text(
            project.description!,
            maxLines: Responsive.isMobileLarge(context) ? 2 : 4,
            overflow: TextOverflow.clip,
            style: const TextStyle(height: 1.5),
          ),
          const Spacer(),
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: SECONDARY_COLOR),
            onPressed: () {
              const Placeholder();
            },
            child: const Text(
              "Read More >>",
              style: TextStyle(color: PRIMARY_COLOR),
            ),
          ),
        ],
      ),
    );
  }
}
