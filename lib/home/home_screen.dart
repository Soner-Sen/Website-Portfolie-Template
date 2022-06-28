import 'package:flutter/material.dart';
import 'package:fluttershow/screens/main_body_screen.dart';

import 'Widgets/home_banner.dart';
import 'Widgets/my_projects.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const MainBodyScreen(
      children: [
        HomeBanner(),
        MyProject(),
      ],
    );
  }
}
