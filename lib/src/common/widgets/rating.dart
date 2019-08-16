import 'package:flutter/material.dart';
import 'package:flutter_curriculum/src/configs/colorsConfig.dart';

class Rating extends StatelessWidget {
  final _colors = ColorsConfig();
  final int rating;

  Rating({Key key, this.rating}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    var rates = List<Widget>();
    for (var i = 0; i < rating; i++) {
      rates.add(drawCircle(true));
    }
    for (var j = rating; j < 5; j++) {
      rates.add(drawCircle(false));
    }
    return Row(
      children: rates,
    );
  }

  Widget drawCircle(bool on) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2),
      child: Container(
        width: 15,
        height: 15,
        decoration: new BoxDecoration(
          color: on ? _colors.primary : _colors.background,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}