// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

import 'instagrampage.dart';

class Popup extends StatefulWidget {
  const Popup({
    Key? key,
  }) : super(key: key);

  @override
  State<Popup> createState() => _PopupState();
}

class _PopupState extends State<Popup> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (context) => [
        PopupMenuItem(
          onTap: () {
            print("tap akun");
          },
          child: const ListTile(
            leading: Icon(Icons.person),
            title: Text("Akun"),
            dense: true,
          ),
        ),
        PopupMenuItem(
          onTap: () {
            print("tap log out");
          },
          child: const ListTile(
            leading: Icon(Icons.close),
            title: Text("Log Out"),
            dense: true,
          ),
        ),
      ],
      onSelected: (value) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const InstaGramPage(),
          ),
        );
      },
    );
  }
}
