import 'package:flutter/material.dart';

import '../../../const_values.dart';

// PersonalDataSheet displays the important information in the Drawer: 
// There is always a title and an associated text

class PersonalDataSheet extends StatelessWidget {
  const PersonalDataSheet({
    Key? key,
    this.title,
    this.text,
  }) : super(key: key);

  final String? title, text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: DEFAULT_PADDING / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title!,
            style: const TextStyle(color: Colors.white),
          ),
          Text(text!),
        ],
      ),
    );
  }
}
