import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';

import 'app_widget.dart';
import 'app_bloc.dart';
import 'pages/bottom_navbar/bottom_navbar_bloc.dart';
import 'pages/languages/languages_bloc.dart';
import 'pages/education/education_bloc.dart';
import 'pages/skills/skills_bloc.dart';
import 'pages/latestExperiences/latestExperiences_bloc.dart';

export 'app_widget.dart';
export 'app_bloc.dart';
export 'pages/bottom_navbar/bottom_navbar_bloc.dart';
export 'pages/languages/languages_bloc.dart';
export 'pages/education/education_bloc.dart';
export 'pages/skills/skills_bloc.dart';
export 'pages/latestExperiences/latestExperiences_bloc.dart';

class AppModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => LanguagesBloc()),
        Bloc((i) => EducationBloc()),
        Bloc((i) => SkillsBloc()),
        Bloc((i) => LatestExperiencesBloc()),
        Bloc((i) => BottomNavbarBloc()),
        Bloc((i) => AppBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
