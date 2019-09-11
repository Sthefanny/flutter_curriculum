import 'package:flutter/material.dart';
import 'package:flutter_curriculum/src/common/widgets/build_platform_scaffold.dart';
import 'package:flutter_curriculum/src/common/widgets/rating.dart';

class SkillsPage extends StatefulWidget {
  @override
  _SkillsPageState createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage> {
  @override
  Widget build(BuildContext context) {
    return BuildPlatformScaffold(title: 'Skills', child: buildBody());
  }

  Widget buildBody() {
    return Center(
      child: Container(
        margin: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            buildCard('Javascript', 5),
            buildCard('C#', 4),
            buildCard('.Net', 4),
            buildCard('Web Api', 4),
            buildCard('AngularJS', 4),
            buildCard('Typescript', 4),
            buildCard('CSS / SASS', 4),
            buildCard('SQL Server', 3),
            buildCard('ReactJS', 2),
            buildCard('ReactNative', 2),
            buildCard('Flutter', 3),
            buildCard('Dart', 3),
          ],
        ),
      ),
    );
  }

  Widget buildCard(String skill, int rate) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[Text(skill, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)), Rating(rating: rate)],
        ),
      ),
    );
  }
}
