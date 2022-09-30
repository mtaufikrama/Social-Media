import 'package:flutter/material.dart';

import 'instagram.dart';
import 'snapgram.dart';

class InstaGramPage extends StatefulWidget {
  const InstaGramPage({Key? key}) : super(key: key);

  @override
  State<InstaGramPage> createState() => _InstaGramPageState();
}

class _InstaGramPageState extends State<InstaGramPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
        controller: ScrollController(),
        children: [
          SizedBox(
            height: 75,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                SnapGram(),
                SnapGram(),
                SnapGram(),
                SnapGram(),
                SnapGram(),
                SnapGram(),
                SnapGram(),
                SnapGram(),
                SnapGram(),
                SnapGram(),
                SizedBox(width: 7)
              ],
            ),
          ),
          InstaGram(),
          InstaGram(),
          InstaGram(),
          InstaGram(),
          InstaGram(),
          InstaGram(),
          InstaGram(),
          InstaGram(),
          InstaGram(),
          InstaGram(),
        ],
    );
  }
}