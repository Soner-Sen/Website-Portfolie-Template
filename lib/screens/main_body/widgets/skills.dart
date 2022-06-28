import 'package:flutter/material.dart';
import 'package:fluttershow/Widgets/circular_progress_animation.dart';

import '../../../const_values.dart';

// Skills are the animated circles in the drawer 

class Skills extends StatelessWidget {
  const Skills({
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
            'Skills',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Row(
          children: const <Widget>[
            Expanded(
              child: //animation
                  CircularProgressAnimation(
                percentage: 0.85,
                label: 'Flutter',
              ),
            ),
            SizedBox(
              width: DEFAULT_PADDING,
            ),
            Expanded(
              child: //animation
                  CircularProgressAnimation(
                percentage: 0.73,
                label: 'UE5',
              ),
            ),
            SizedBox(
              width: DEFAULT_PADDING,
            ),
            Expanded(
              child: //animation
                  CircularProgressAnimation(
                percentage: 0.66,
                label: 'UX DESIGN',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
