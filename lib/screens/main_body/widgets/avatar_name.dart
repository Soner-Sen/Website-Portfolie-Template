import 'package:flutter/material.dart';
import 'package:fluttershow/const_values.dart';

// AvatarName is the top section in the Drawer and contains an image and the name

class AvatarName extends StatelessWidget {
  const AvatarName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      //Top Left Side
      child: Container(
        color: SECONDARY_COLOR,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            const Spacer(
              flex: 2,
            ),
            //Profil Picture
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/profil.jpg'),
            ),
            const Spacer(),
            //Your Name
            Text(
              "Soner Sen",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            const Spacer(),
            //Title? Youtuber? Founder?
            const Text(
              'Founder of\n your company???',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w200, height: 1.5),
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
