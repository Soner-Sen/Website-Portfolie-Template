import 'package:flutter/material.dart';
import 'package:fluttershow/Widgets/linear_progress_animation.dart';

import '../../../const_values.dart';

// The coding widget shows in the drawer the programming languages I know

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: DEFAULT_PADDING),
          child: Text(
            'Coding Languages',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        const LinearProgressAnimation(
          percentage: 0.8,
          label: 'Dart',
        ),
        const LinearProgressAnimation(
          percentage: 0.6,
          label: 'C / C++',
        ),
        const LinearProgressAnimation(
          percentage: 0.4,
          label: 'Java',
        ),
      ],
    );
  }
}
