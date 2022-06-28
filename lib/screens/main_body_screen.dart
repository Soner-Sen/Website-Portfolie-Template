import 'package:flutter/material.dart';
import 'package:fluttershow/const_values.dart';
import 'package:fluttershow/responsive.dart';

import 'main_body/drawer_screen.dart';

class MainBodyScreen extends StatelessWidget {
  const MainBodyScreen({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: BACKGROUND_COLOR,
              leading: Builder(
                builder: (context) => IconButton(
                  onPressed: () {
                    // Clicking on the burger icon opens the drawer
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(Icons.menu),
                ),
              )),
      drawer: const DrawerScreen(),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: MAX_SCREEN_WIDTH),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              if (Responsive.isDesktop(context))
                const Expanded(
                  // 22% width
                  flex: 2,
                  child: DrawerScreen(),
                ),
              const SizedBox(width: DEFAULT_PADDING),
              Expanded(
                  // 78% width
                  flex: 7,
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        ...children,
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
