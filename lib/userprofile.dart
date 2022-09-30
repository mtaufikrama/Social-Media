import 'package:cobaduls/instagrampage.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({
    Key? key,
  }) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const InstaGramPage(),
            ),
          );
        },
        leading: CircleAvatar(
          child: IconButton(
            iconSize: 30,
            color: Colors.amber,
            highlightColor: Colors.blue,
            onPressed: () => _dialogBuilder(context),
            icon: const CircleAvatar(
              child: Icon(Icons.people),
            ),
          ),
        ),
        title: const Text("Muhammad Taufik Ramadhan"),
        subtitle: const Text("14 Desember 2000"),
        trailing: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.cake),
        ),
        dense: true,
    );
  }
}

Future<void> _dialogBuilder(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return const AlertDialog(
        content: AspectRatio(
          aspectRatio: 1 / 1,
          child: Image(
            fit: BoxFit.cover,
            image: NetworkImage(
              "https://pict.sindonews.net/dyn/850/pena/news/2022/03/02/53/701485/4-istri-muhammad-ali-dari-pelayan-koktail-hingga-aktris-masuk-islam-rug.jpeg",
            ),
          ),
        ),
      );
    },
  );
}
