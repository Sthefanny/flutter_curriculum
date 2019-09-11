import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';

import 'bottom_navbar_bloc.dart';
import 'bottom_navbar_widget.dart';

class BottomNavbarModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => BottomNavbarBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => BottomNavbar();

  static Inject get to => Inject<BottomNavbarModule>.of();
}
