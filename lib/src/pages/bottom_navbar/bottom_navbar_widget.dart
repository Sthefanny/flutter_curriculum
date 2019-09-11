import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_curriculum/src/common/models/pageRoutes.dart';
import 'package:flutter_curriculum/src/configs/colorsConfig.dart';
import 'package:flutter_curriculum/src/pages/education/education_page.dart';
import 'package:flutter_curriculum/src/pages/home/home_module.dart';
import 'package:flutter_curriculum/src/pages/languages/languages_page.dart';
import 'package:flutter_curriculum/src/pages/latestExperiences/latestExperiences_page.dart';
import 'package:flutter_curriculum/src/pages/skills/skills_page.dart';

import '../../app_module.dart';
import 'widgets/bottom_items.dart';

class BottomNavbar extends StatefulWidget {
  @override
  _BottomNavbarState createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  final _bloc = AppModule.to.getBloc<BottomNavbarBloc>();
  final _colors = ColorsConfig();

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS ? buildiOSScaffold() : buildAndroidScaffold();
  }

  Widget buildAndroidScaffold() {
    return Scaffold(
      backgroundColor: _colors.background,
      body: HomeModule(),
    );
  }

  Widget buildiOSScaffold() {
    return StreamBuilder(
      stream: _bloc.navbarItem,
      builder: (BuildContext context, AsyncSnapshot<NavBarItem> snapshot) {
        var currentIndex = snapshot.hasData ? snapshot.data.index : 2;
        return CupertinoTabScaffold(
          tabBuilder: (BuildContext context, int index) {
            return CupertinoTabView(
              onGenerateRoute: PageRoutes.routes,
              builder: (BuildContext context) {
                var page;
                switch (snapshot.data) {
                  case NavBarItem.LATEST_EXPERIENCES:
                    page = LatestExperiencesPage();
                    break;
                  case NavBarItem.SKILLS:
                    page = SkillsPage();
                    break;
                  case NavBarItem.EDUCATION:
                    page = EducationPage();
                    break;
                  case NavBarItem.LANGUAGES:
                    page = LanguagesPage();
                    break;
                  case NavBarItem.SUMMARY:
                  default:
                    page = HomeModule();
                    break;
                }
                return CupertinoPageScaffold(
                  child: page,
                );
              },
            );
          },
          tabBar: CupertinoTabBar(
            activeColor: Colors.purple[700],
            border: Border(top: BorderSide(color: Colors.white)),
            currentIndex: currentIndex,
            items: BottomItems.build(context),
            onTap: _bloc.pickItem,
          ),
        );
      },
    );
  }
}
