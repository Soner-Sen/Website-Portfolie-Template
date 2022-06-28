import 'package:flutter/material.dart';

import '../const_values.dart';

class LinearProgressAnimation extends StatelessWidget {
  const LinearProgressAnimation({
    Key? key,
    required this.percentage,
    required this.label,
  }) : super(key: key);

  final double percentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: DEFAULT_PADDING,
      ),
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: percentage),
        duration: DEFAULT_DURATION,
        builder: (context, double value, child) => Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  label,
                  style: const TextStyle(color: Colors.white),
                ),
                Text(
                  (value * 100).toInt().toString() + '%',
                ),
              ],
            ),
            const SizedBox(
              height: DEFAULT_PADDING / 2,
            ),
            LinearProgressIndicator(
              value: value,
              color: PRIMARY_COLOR,
              backgroundColor: DARK_COLOR,
            ),
          ],
        ),
      ),
    );
  }
}
