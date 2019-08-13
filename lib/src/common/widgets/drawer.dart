import 'package:flutter/material.dart';
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
            title: Text('Item 1'),
            onTap: () {
            },
          ),
          ListTile(
            title: Text('Item 2'),
            onTap: () {
            },
          ),
        ],
      ),),
    );
  }
}