// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _drawerHeader(),
          _drawerItem(
            icon: Icons.folder,
            text: 'My Files',
            onTap: () => print('Tap My Files'),
          ),
          _drawerItem(
            icon: Icons.group,
            text: 'Shared with me',
            onTap: () => print('Tap Shared menu'),
          ),
          _drawerItem(
            icon: Icons.access_time,
            text: 'Recent',
            onTap: () => print('Tap Recent menu'),
          ),
          _drawerItem(
            icon: Icons.delete,
            text: 'Trash',
            onTap: () => print('Tap Trash menu'),
          ),
          const Divider(thickness: 1),
          const Padding(
            padding: EdgeInsets.only(left: 20.0, top: 10),
            child: Text("Labels",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                )),
          ),
          _drawerItem(
            icon: Icons.bookmark,
            text: 'Family',
            onTap: () => print('Tap Family menu'),
          ),
        ],
      ),
    );
  }
}

Widget _drawerItem({IconData? icon, String? text, GestureTapCallback? onTap}) {
  return ListTile(
    title: Text(
      text!,
      textDirection: TextDirection.rtl,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
    trailing: Icon(icon),
    onTap: onTap,
  );
}

Widget _drawerHeader() {
  return const UserAccountsDrawerHeader(
    currentAccountPicture: ClipOval(
      child: Image(
        image: NetworkImage(
          'https://cdn.pixabay.com/photo/2016/10/19/08/57/mountains-1752433__340.jpg',
        ),
        fit: BoxFit.cover,
      ),
    ),
    accountName: Text('Belajar Flutter'),
    accountEmail: Text('hallo@belajarflutter.com'),
  );
}
