import 'package:flutter/material.dart';

import 'common/models/pageRoutes.dart';
import 'configs/colorsConfig.dart';

class AppWidget extends StatelessWidget {
  final _colors = ColorsConfig();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sthefanny Gonzaga',
      theme: ThemeData(
        primaryColor: _colors.primary,
      ),
      initialRoute: PageRoutes.bottomNavbarRoute,
      onGenerateRoute: PageRoutes.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
