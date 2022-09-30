import 'package:flutter/material.dart';

import 'snapgram.dart';

class InstaGram extends StatelessWidget {
  const InstaGram({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Card(
        child: TextButton(
          onPressed: () {},
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                  "https://cdn0-production-images-kly.akamaized.net/VT-lRzXrTni_sY60CWdG8Z3gnUE=/640x360/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/1803883/original/018366800_1513428575-20171216-Muhammad_Ali_2.jpg",
                ),
              ),
              ListTile(
                dense: true,
                title: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.comment),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.share),
                    ),
                  ],
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.bookmark),
                ),
              ),
              ListTile(
                leading: const SnapGram(),
                title: const Text(
                  "JUDUL",
                ),
                subtitle: const Text(
                  "CAPTION",
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 5,
                  vertical: 5,
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_vert,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
