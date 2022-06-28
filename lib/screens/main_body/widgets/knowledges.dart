import 'package:flutter/material.dart';

import '../../../const_values.dart';

// Knowledges displays some important skills. 

class Knowledges extends StatelessWidget {
  const Knowledges({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: DEFAULT_PADDING,
          ),
          child: Text(
            'Knowledges',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        const KnowledgeContent(text: 'Flutter, Dart'),
        const KnowledgeContent(text: 'Unreal Engine 5, C++'),
        const KnowledgeContent(text: 'UX Design'),
        const KnowledgeContent(text: 'Agile: Scrum, Kanban'),
        const KnowledgeContent(text: 'Git, Git-Flow'),
      ],
    );
  }
}

class KnowledgeContent extends StatelessWidget {
  const KnowledgeContent({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: DEFAULT_PADDING / 2),
      child: Row(
        children: <Widget>[
          const Icon(
            Icons.check,
            color: Colors.pink,
          ),
          const SizedBox(
            width: DEFAULT_PADDING / 2,
          ),
          Text(text),
        ],
      ),
    );
  }
}
