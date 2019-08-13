import 'package:flutter/material.dart';
import 'package:flutter_curriculum/src/pages/home/home_module.dart';
import 'package:flutter_curriculum/src/pages/latestExperiences/latestExperiences_page.dart';
import 'package:flutter_curriculum/src/pages/nav_bottom/nav_bottom_page.dart';

class PageRoutes {
  static const String homeRoute = '/home';
  static const String latestExperiencesRoute = '/lastestExperiences';
  static const String navBottomRoute = '/bottomNav';

  static Route routes(RouteSettings settings) {
    Map<String, dynamic> argumentsMap = settings.arguments is Map<String, dynamic> ? settings.arguments : Map();
    switch (settings.name) {
      case PageRoutes.navBottomRoute:
        return MaterialPageRoute(builder: (_) => NavBottomPage());
      case PageRoutes.latestExperiencesRoute:
        return MaterialPageRoute(builder: (_) => LatestExperiencesPage());
      case PageRoutes.homeRoute:
      default:
        return MaterialPageRoute(builder: (_) => HomeModule());
    }
  }
}

enum PageRoutesEnum { homeRoute, latestExperiencesRoute }