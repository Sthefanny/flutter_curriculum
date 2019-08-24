import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomItems {
  static List<BottomNavigationBarItem> build(BuildContext context) {
    return <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(
          Icons.business_center,
          size: 25,
        ),
        title: Text('Latest Expe.'),
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.gamepad,
          size: 25,
        ),
        title: Text('Skills'),
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.wifi_tethering,
          size: 25,
        ),
        title: Text('Summary'),
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.school,
          size: 25,
        ),
        title: Text('Education'),
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.flag,
          size: 25,
        ),
        title: Text('Languages'),
      ),
    ];
  }
}
