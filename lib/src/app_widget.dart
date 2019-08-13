import 'package:flutter/material.dart';

import 'common/models/pageRoutes.dart';
import 'configs/colorsConfig.dart';
import 'pages/nav_bottom/nav_bottom_page.dart';

class AppWidget extends StatelessWidget {
  final _colors = ColorsConfig();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sthefanny Gonzaga',
      theme: ThemeData(
        primaryColor: _colors.primary,
      ),
      home: NavBottomPage(),
      initialRoute: PageRoutes.navBottomRoute,
      onGenerateRoute: PageRoutes.routes,
    );
  }
}
