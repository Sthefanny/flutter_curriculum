import 'package:flutter/material.dart';

import 'common/models/pageRoutes.dart';
import 'pages/nav_bottom/nav_bottom_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sthefanny Gonzaga',
      theme: ThemeData(
        primaryColor: Color(0xFF391e39),
      ),
      home: NavBottomPage(),
    );
  }
}
