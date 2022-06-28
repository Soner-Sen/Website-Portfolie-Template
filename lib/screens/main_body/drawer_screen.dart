import 'package:flutter/material.dart';
import 'package:fluttershow/const_values.dart';
import 'package:fluttershow/screens/main_body/widgets/coding.dart';
import 'package:fluttershow/screens/main_body/widgets/personal_data_sheet.dart';
import 'package:fluttershow/screens/main_body/widgets/skills.dart';

import 'widgets/avatar_name.dart';
import 'widgets/icon_url.dart';
import 'widgets/knowledges.dart';
import 'widgets/languages.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: <Widget>[
            //Top Left: Name and Profil Picture
            const AvatarName(),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(DEFAULT_PADDING),
                child: Column(
                  children: const <Widget>[
                    IconUrl(),
                    SizedBox(
                      height: DEFAULT_PADDING / 2,
                    ),
                    Divider(),
                    PersonalDataSheet(
                      title: 'Residence',
                      text: 'Germany',
                    ),
                    PersonalDataSheet(
                      title: 'City',
                      text: 'Groß-Gerau',
                    ),
                    PersonalDataSheet(
                      title: 'Birthday',
                      text: '20.01.1998',
                    ),
                    PersonalDataSheet(
                      title: 'E-Mail',
                      text: 'Placerholder@gmail.com',
                    ),
                    Languages(),
                    SizedBox(
                      height: DEFAULT_PADDING / 2,
                    ),
                    Skills(),
                    SizedBox(
                      height: DEFAULT_PADDING / 2,
                    ),
                    Coding(),
                    Knowledges(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
