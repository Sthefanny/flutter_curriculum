import 'package:flutter/material.dart';
import 'package:flutter_curriculum/src/pages/bottom_navbar/bottom_navbar_module.dart';
import 'package:flutter_curriculum/src/pages/education/education_page.dart';
import 'package:flutter_curriculum/src/pages/home/home_module.dart';
import 'package:flutter_curriculum/src/pages/languages/languages_page.dart';
import 'package:flutter_curriculum/src/pages/latestExperiences/latestExperiences_page.dart';
import 'package:flutter_curriculum/src/pages/skills/skills_page.dart';

class PageRoutes {
  static const String initialRoute = '/';
  static const String homeRoute = '/home';
  static const String bottomNavbarRoute = '/bottomNavbar';
  static const String latestExperiencesRoute = '/lastestExperiences';
  static const String skillsRoute = '/skills';
  static const String educationRoute = '/education';
  static const String languagesRoute = '/languages';

  static String lastPage;

  static Route routes(RouteSettings settings) {
    if (settings.name != lastPage) {
      lastPage = settings.name;
      // Map<String, dynamic> argumentsMap = settings.arguments is Map<String, dynamic> ? settings.arguments : Map();
      switch (settings.name) {
        case PageRoutes.bottomNavbarRoute:
          return MaterialPageRoute(builder: (_) => BottomNavbarModule());
        case PageRoutes.latestExperiencesRoute:
          return MaterialPageRoute(builder: (_) => LatestExperiencesPage());
        case PageRoutes.skillsRoute:
          return MaterialPageRoute(builder: (_) => SkillsPage());
        case PageRoutes.educationRoute:
          return MaterialPageRoute(builder: (_) => EducationPage());
        case PageRoutes.languagesRoute:
          return MaterialPageRoute(builder: (_) => LanguagesPage());
        case PageRoutes.homeRoute:
        case PageRoutes.initialRoute:
        default:
          return MaterialPageRoute(builder: (_) => HomeModule());
      }
    }

    return null;
  }
}

enum PageRoutesEnum { homeRoute, latestExperiencesRoute }
