import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:fluttershow/responsive.dart';

import '../../const_values.dart';

// HomeBanner is the top section in the body and includes a greeting, animated text and a blurhash background.

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          const BlurHash(hash: "LbEMFznmM^n,_Sj[S|j?y4bFaebF"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: DEFAULT_PADDING),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Hello! Welcome To \nMy Online Portfolio!',
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headline3!.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white)
                      : Theme.of(context).textTheme.headline5!.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white),
                ),
                if (Responsive.isMobileLarge(context))
                  const SizedBox(
                    height: DEFAULT_PADDING / 2,
                  ),
                const AnimatedBannerText(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class AnimatedBannerText extends StatelessWidget {
  const AnimatedBannerText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!,
      child: Row(
        children: [
          if (!Responsive.isMobileLarge(context)) const FlutterEmojiText(),
          if (!Responsive.isMobileLarge(context))
            const SizedBox(
              width: DEFAULT_PADDING / 2,
            ),
          const Text('i develop '),
          const AnimatedText(),
          if (!Responsive.isMobileLarge(context))
            const SizedBox(width: DEFAULT_PADDING / 2),
          if (!Responsive.isMobileLarge(context)) const FlutterEmojiText(),
        ],
      ),
    );
  }
}
// The animated text in the banner
class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText(
          'Games in Unreal Engine 5',
          speed: const Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          'UX and UI Designs',
          speed: const Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          'Cross Platform Apps in Flutter',
          speed: const Duration(milliseconds: 60),
        ),
      ],
    );
  }
}
// The emoji before and after the animated text
class FlutterEmojiText extends StatelessWidget {
  const FlutterEmojiText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: "👨‍💻",
            style: TextStyle(color: PRIMARY_COLOR),
          ),
        ],
      ),
    );
  }
}
