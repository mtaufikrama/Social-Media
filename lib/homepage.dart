import 'package:flutter/material.dart';

import 'instagrampage.dart';
import 'nav-drawer.dart';
import 'popup.dart';
import 'userprofile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool visibilityTag = false;
  bool visibilityObs = false;
  Icon customIcon = const Icon(Icons.search);
  Widget customSearchBar = const Text('Facebook');
  int klik = 0;

  void _changed(bool visibility, String field) {
    setState(
      () {
        if (field == "tag") {
          visibilityTag = visibility;
        }
        if (field == "obs") {
          visibilityObs = visibility;
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.red,
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Facebook_icon.svg/2048px-Facebook_icon.svg.png",
                  height: 20,
                ),
              ),
              Tab(
                icon: Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Instagram_logo_2022.svg/2048px-Instagram_logo_2022.svg.png",
                  height: 20,
                ),
              ),
              const Tab(
                icon: Icon(Icons.input),
              ),
            ],
          ),
          leading: IconButton(
            onPressed: () => _scaffoldKey.currentState?.openDrawer(),
            icon: const Icon(Icons.menu, color: Colors.white,),
          ),
          title: customSearchBar,
          actions: [
            IconButton(
              onPressed: () {
                setState(
                  () {
                    if (customIcon.icon == Icons.search) {
                      customIcon = const Icon(Icons.cancel);
                      customSearchBar = Row(
                        children: const [
                          Expanded(
                            flex: 1,
                            child: Icon(
                              Icons.search,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                          SizedBox(width: 5),
                          Expanded(
                            flex: 9,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'type in username...',
                                hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontStyle: FontStyle.italic,
                                ),
                                border: InputBorder.none,
                              ),
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      );
                    } else {
                      customIcon = const Icon(Icons.search);
                      customSearchBar = const Text('Facebook');
                    }
                  },
                );
              },
              icon: customIcon,
            ),
            const Popup(),
          ],
          centerTitle: true,
        ),
        drawer: const DrawerWidget(),
        endDrawer: const DrawerWidget(),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                "https://img.freepik.com/free-photo/grunge-paint-background_1409-1337.jpg?w=2000",
              ),
            ),
          ),
          child: TabBarView(
            children: <Widget>[
              ListView(
                controller: ScrollController(),
                children: [
                  Column(
                    children: <Widget>[
                      visibilityObs
                          ? Column(
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: const AspectRatio(
                                    aspectRatio: 16 / 9,
                                    child: Image(
                                      fit: BoxFit.none,
                                      image: NetworkImage(
                                        "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg",
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  child: IconButton(
                                    icon: const Icon(
                                      Icons.arrow_circle_up,
                                      size: 22.0,
                                    ),
                                    onPressed: () {
                                      _changed(false, "obs");
                                    },
                                  ),
                                ),
                              ],
                            )
                          : Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    visibilityObs
                                        ? null
                                        : _changed(true, "obs");
                                    setState(() {
                                      klik++;
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.arrow_circle_down,
                                  ),
                                ),
                                Text("$klik"),
                              ],
                            ),
                    ],
                  ),
                  const UserProfile(),
                  const UserProfile(),
                  const UserProfile(),
                  const UserProfile(),
                  const UserProfile(),
                  const UserProfile(),
                  const UserProfile(),
                  const UserProfile()
                ],
              ),
              const InstaGramPage(),
              const Text("INPUT")
            ],
          ),
        ),
      ),
    );
  }
}
