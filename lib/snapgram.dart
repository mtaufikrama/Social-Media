import 'package:flutter/material.dart';

class SnapGram extends StatelessWidget {
  const SnapGram({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 7,
        top: 7,
        bottom: 7,
      ),
      child: CircleAvatar(
        radius: 30,
        backgroundImage: const NetworkImage(
          "https://cdn0-production-images-kly.akamaized.net/VT-lRzXrTni_sY60CWdG8Z3gnUE=/640x360/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/1803883/original/018366800_1513428575-20171216-Muhammad_Ali_2.jpg",
        ),
        child: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.person,
            color: Colors.transparent,
          ),
        ),
      ),
    );
  }
}
