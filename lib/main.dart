import 'package:flutter/material.dart';
import 'package:fluttershow/const_values.dart';
import 'package:fluttershow/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      debugShowCheckedModeBanner: false,
      //Toggle Light and DarkScreen
      theme: ThemeData.dark().copyWith(
        primaryColor: PRIMARY_COLOR,
        scaffoldBackgroundColor: BACKGROUND_COLOR,
        canvasColor: BACKGROUND_COLOR,
      ),
      home: const HomeScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
