import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../const_values.dart';

// IconUrl shows the clickable icons in the drawer and leads you to certain websites

class IconUrl extends StatelessWidget {
  const IconUrl({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: DEFAULT_PADDING),
      color: DARK_COLOR,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
            onPressed: _launchLinkedin,
            icon: SvgPicture.asset('assets/icons/linkedin1.svg'),
          ),
          IconButton(
            onPressed: _launchGithub,
            icon: SvgPicture.asset('assets/icons/github.svg'),
          ),
          IconButton(
            onPressed: _launchYouTube,
            icon: SvgPicture.asset('assets/icons/youtube1.svg'),
          ),
          IconButton(
            onPressed: _launchEmail,
            icon: SvgPicture.asset('assets/icons/outlook.svg'),
          ),
          IconButton(
            onPressed: _launchSteam,
            icon: SvgPicture.asset('assets/icons/steam.svg'),
          ),
        ],
      ),
    );
  }
}

_launchLinkedin() async {
  const url = 'https://www.linkedin.com/in/soner-sen/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchGithub() async {
  const url = 'https://github.com/Soner-Sen';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchYouTube() async {
  const url =
      'https://i.pinimg.com/originals/fc/e2/35/fce235abf356e340a772bbaaecb92d1c.gif';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchSteam() async {
  const url = 'https://steamcommunity.com/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchEmail() async {
  String toEmail = 'Your_E-Mail@gmail.com';
  String toSubject = 'Your subject?';
  String toMessage = 'Here could be your wonderful message.';
  final url = 'mailto:$toEmail?subject=$toSubject&body=$toMessage';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
