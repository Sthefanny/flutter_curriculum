import 'package:flutter/material.dart';
import 'package:flutter_curriculum/src/common/widgets/platformScaffold.dart';
import 'package:flutter_curriculum/src/common/widgets/rating.dart';

class LanguagesPage extends StatefulWidget {
  @override
  _LanguagesPageState createState() => _LanguagesPageState();
}

class _LanguagesPageState extends State<LanguagesPage> {
  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(icon: Icons.flag, title: 'Languages', child: buildBody());
  }

  Widget buildBody() {
    return Center(
      child: Container(
        margin: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            buildCard('Brazilian Portuguese', 5),
            buildCard('English', 4),
          ],
        ),
      ),
    );
  }

  Widget buildCard(String language, int rate) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(language, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            Rating(rating: rate)
          ],
        ),
      ),
    );
  }
}
