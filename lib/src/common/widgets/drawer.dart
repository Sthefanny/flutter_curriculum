import 'package:flutter/material.dart';
import 'package:flutter_curriculum/src/common/models/pageRoutes.dart';
import 'package:flutter_curriculum/src/configs/colorsConfig.dart';

class DrawerDefault extends StatelessWidget {
  final _colors = ColorsConfig();
  
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: _colors.background,
        child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Column(
              children: <Widget>[
                CircleAvatar(backgroundImage: AssetImage("assets/images/my_photo.JPG"), radius: 40),
                Container(padding: EdgeInsets.only(top: 20)),
                Text('Sthefanny Gonzaga', textAlign: TextAlign.center, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
              ],
            ),
            decoration: BoxDecoration(
              color: _colors.primary,
            ),
          ),
          ListTile(
            title: Row(
              children: <Widget>[
                Container(margin: EdgeInsets.only(right: 10), child: Icon(Icons.wifi_tethering)),
                Text('Summary'),
              ],
            ),
            onTap: () {
              Navigator.of(context).pushNamed(PageRoutes.homeRoute);
            },
          ),
          ListTile(
            title: Row(
              children: <Widget>[
                Container(margin: EdgeInsets.only(right: 10), child: Icon(Icons.business_center)),
                Text('Latest Experiences'),
              ],
            ),
            onTap: () {
              Navigator.of(context).pushNamed(PageRoutes.latestExperiencesRoute);
            },
          ),
          ListTile(
            title: Row(
              children: <Widget>[
                Container(margin: EdgeInsets.only(right: 10), child: Icon(Icons.gamepad)),
                Text('Skills'),
              ],
            ),
            onTap: () {
              Navigator.of(context).pushNamed(PageRoutes.skillsRoute);
            },
          ),
          ListTile(
            title: Row(
              children: <Widget>[
                Container(margin: EdgeInsets.only(right: 10), child: Icon(Icons.school)),
                Text('Education'),
              ],
            ),
            onTap: () {
              Navigator.of(context).pushNamed(PageRoutes.educationRoute);
            },
          ),
          ListTile(
            title: Row(
              children: <Widget>[
                Container(margin: EdgeInsets.only(right: 10), child: Icon(Icons.flag)),
                Text('Languages'),
              ],
            ),
            onTap: () {
              Navigator.of(context).pushNamed(PageRoutes.languagesRoute);
            },
          ),
        ],
      ),),
    );
  }
}