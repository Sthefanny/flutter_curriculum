import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_curriculum/src/configs/colorsConfig.dart';

import 'drawer.dart';

class PlatformScaffold extends StatelessWidget {
  final _colors = ColorsConfig();
  final Widget child;
  final String title;
  final IconData icon;

  PlatformScaffold({Key key, this.child, this.title, this.icon}) : super(key: key);
  
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
            return child;
        }
      },
    );
  }

  Widget androidScaffold() {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        ),
      body: child,
      drawer: DrawerDefault(),
      backgroundColor: _colors.background,
    );
  }
}