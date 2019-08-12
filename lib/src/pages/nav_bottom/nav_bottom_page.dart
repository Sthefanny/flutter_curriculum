import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_curriculum/src/common/widgets/drawer.dart';
import 'package:flutter_curriculum/src/pages/home/home_module.dart';

class NavBottomPage extends StatefulWidget {
  @override
  _NavBottomPageState createState() => _NavBottomPageState();
}

class _NavBottomPageState extends State<NavBottomPage> {
  @override
  Widget build(BuildContext context) {
    return Platform.isIOS ? iOSScaffold() : androidScaffold();
  }

  Widget iOSScaffold() {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home)
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_solid)
          ),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 1:
          default:
            return HomeModule();
        }
      },
    );
  }

  Widget androidScaffold() {
    return Scaffold(
      body: HomeModule(),
      drawer: DrawerDefault(),
    );
  }
}
