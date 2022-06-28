import 'package:flutter/material.dart';
import 'package:fluttershow/Widgets/linear_progress_animation.dart';

import '../../../const_values.dart';

// Languages shows which languages I know

class Languages extends StatelessWidget {
  const Languages({
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
            'Languages',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        const LinearProgressAnimation(
          percentage: 1.0,
          label: 'German',
        ),
        const LinearProgressAnimation(
          percentage: 0.70,
          label: 'English',
        ),
        const LinearProgressAnimation(
          percentage: 0.3,
          label: 'Turkish',
        ),
      ],
    );
  }
}
