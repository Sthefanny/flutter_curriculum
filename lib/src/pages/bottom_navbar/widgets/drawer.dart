import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_curriculum/src/common/models/pageRoutes.dart';
import 'package:flutter_curriculum/src/configs/colorsConfig.dart';

class DrawerDefault {
  static build(BuildContext context) {
    var colors = ColorsConfig();

    return Platform.isIOS
        ? null
        : Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[buildDrawerItems(context, colors)],
            ),
          );
  }

  static Widget buildDrawerItems(BuildContext context, ColorsConfig colors) {
    return Column(
      children: <Widget>[
        buildDrawerHeader(colors),
        InkWell(
          child: buildDrawerItem(Icons.wifi_tethering, 'Summary', colors),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.of(context).pushReplacementNamed(PageRoutes.homeRoute);
          },
        ),
        InkWell(
          child: buildDrawerItem(Icons.business_center, 'Latest Experiences', colors),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.of(context).pushReplacementNamed(PageRoutes.latestExperiencesRoute);
          },
        ),
        InkWell(
          child: buildDrawerItem(Icons.gamepad, 'Skills', colors),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.of(context).pushReplacementNamed(PageRoutes.skillsRoute);
          },
        ),
        InkWell(
          child: buildDrawerItem(Icons.school, 'Education', colors),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.of(context).pushReplacementNamed(PageRoutes.educationRoute);
          },
        ),
        InkWell(
          child: buildDrawerItem(Icons.flag, 'Languages', colors),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.of(context).pushReplacementNamed(PageRoutes.languagesRoute);
          },
        ),
      ],
    );
  }

  static Widget buildDrawerHeader(ColorsConfig colors) {
    return DrawerHeader(
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        children: <Widget>[
          CircleAvatar(backgroundImage: AssetImage("assets/images/my_photo.JPG"), radius: 40),
          Container(padding: EdgeInsets.only(top: 20)),
          Text('Sthefanny Gonzaga', textAlign: TextAlign.center, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
        ],
      ),
      decoration: BoxDecoration(
        color: colors.primary,
      ),
    );
  }

  static Widget buildDrawerItem(IconData icon, String title, ColorsConfig colors) {
    return Container(
      margin: EdgeInsets.only(left: 20, bottom: 10, top: 10, right: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(padding: EdgeInsets.only(right: 20), child: Container(margin: EdgeInsets.only(right: 10), child: Icon(icon, color: colors.primary))),
          Text(title),
        ],
      ),
    );
  }
}
