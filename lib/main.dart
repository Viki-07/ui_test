import 'package:flutter/material.dart';
import "package:persistent_bottom_nav_bar/persistent_tab_view.dart";
import 'package:ui_test/Chat_Screen.dart';
import 'package:ui_test/Home_Screen.dart';
import 'package:ui_test/Hub_Screen.dart';
import 'package:ui_test/Learn_Screen.dart';
import 'package:ui_test/Profile_Screen.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:ui_test/httpclients/lesson_client.dart';
import 'package:ui_test/models/Lesson_Model.dart';
import 'package:ui_test/models/Program_Model.dart';
import 'httpclients/program_client.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ProgramApi? programData;
  LessonApi? lessonData;
  var isLoaded = false;
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    programData = await ProgramClient().getPrograms();
    lessonData = await LessonClient().getLessons();

    if (programData != null && lessonData != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  List<Widget> builScreen() {
    return [
      HomeScreen(programData: programData!, lessonData: lessonData!),
      const Learn_Screen(),
      const Hub_Screen(),
      const Chat_Screen(),
      const Profile_Screen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(actions: [
          Padding(
            padding: const EdgeInsets.only(right: 240),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  color: Colors.grey,
                )),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.message_outlined,
                color: Colors.grey,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_none_rounded,
                color: Colors.grey,
              ))
        ], backgroundColor: const Color(0xFFEEF3FD), elevation: 0),
        body: isLoaded == true
            ? PersistentTabView(
                navBarStyle: NavBarStyle.simple,
                context,
                screens: builScreen(),
                items: [
                    PersistentBottomNavBarItem(
                      icon: Icon(MdiIcons.home),
                      title: ("Home"),
                      activeColorPrimary: Colors.blue,
                      inactiveColorPrimary: Colors.grey,
                    ),
                    PersistentBottomNavBarItem(
                      icon: Icon(MdiIcons.bookOpenPageVariant),
                      title: ("Learn"),
                      activeColorPrimary: Colors.blue,
                      inactiveColorPrimary: Colors.grey,
                    ),
                    PersistentBottomNavBarItem(
                      icon: const Icon(Icons.hub),
                      title: ("Hub"),
                      activeColorPrimary: Colors.blue,
                      inactiveColorPrimary: Colors.grey,
                    ),
                    PersistentBottomNavBarItem(
                      icon: Icon(MdiIcons.chat),
                      title: ("Chat"),
                      activeColorPrimary: Colors.blue,
                      inactiveColorPrimary: Colors.grey,
                    ),
                    PersistentBottomNavBarItem(
                      icon: Stack(children: [const Icon(Icons.person)]),
                      title: ("Profile"),
                      activeColorPrimary: Colors.blue,
                      inactiveColorPrimary: Colors.grey,
                    ),
                  ])
            : Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
