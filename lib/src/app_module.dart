import 'package:flutter_curriculum/src/pages/languages/languages_bloc.dart';
import 'package:flutter_curriculum/src/pages/education/education_bloc.dart';
import 'package:flutter_curriculum/src/pages/skills/skills_bloc.dart';
import 'package:flutter_curriculum/src/pages/latestExperiences/latestExperiences_bloc.dart';
import 'package:flutter_curriculum/src/pages/nav_bottom/nav_bottom_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:flutter_curriculum/src/app_widget.dart';
import 'package:flutter_curriculum/src/app_bloc.dart';

class AppModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => LanguagesBloc()),
        Bloc((i) => EducationBloc()),
        Bloc((i) => SkillsBloc()),
        Bloc((i) => LatestExperiencesBloc()),
        Bloc((i) => NavBottomBloc()),
        Bloc((i) => AppBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
