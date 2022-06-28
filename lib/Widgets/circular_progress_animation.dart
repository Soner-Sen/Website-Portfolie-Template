import 'package:flutter/material.dart';

import '../const_values.dart';

class CircularProgressAnimation extends StatelessWidget {
  const CircularProgressAnimation({
    Key? key,
    required this.percentage,
    required this.label,
  }) : super(key: key);

  final double percentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: percentage),
            duration: DEFAULT_DURATION,
            builder: (context, double value, child) =>
                //Kreis
                Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                  value: value,
                  color: PRIMARY_COLOR,
                  backgroundColor: DARK_COLOR,
                ),
                //Text zentriert im Kreis
                Center(
                  child: Text(
                    (value * 100).toInt().toString() + '%',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: DEFAULT_PADDING / 2,
        ),
        Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ],
    );
  }
}
