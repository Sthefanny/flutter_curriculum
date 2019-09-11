import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_curriculum/src/configs/colorsConfig.dart';
import 'package:flutter_curriculum/src/pages/bottom_navbar/widgets/drawer.dart';

class BuildPlatformScaffold extends StatelessWidget {
  final _colors = ColorsConfig();
  final String title;
  final Widget child;

  BuildPlatformScaffold({
    Key key,
    this.child,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS ? buildiOSScaffold(context) : buildAndroidScaffold(context);
  }

  Widget buildiOSScaffold(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: child,
      backgroundColor: _colors.background,
    );
  }

  Widget buildAndroidScaffold(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      drawer: DrawerDefault.build(context),
      backgroundColor: _colors.background,
      body: Stack(
        children: <Widget>[
          child,
        ],
      ),
    );
  }

  Widget buildAppBar() {
    return AppBar(
      title: Text(title),
      centerTitle: Platform.isIOS ? true : false,
      backgroundColor: _colors.primary,
    );
  }
}
