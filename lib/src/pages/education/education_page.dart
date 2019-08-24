import 'package:flutter/material.dart';
import 'package:flutter_curriculum/src/common/widgets/build_platform_scaffold.dart';

class EducationPage extends StatefulWidget {
  @override
  _EducationPageState createState() => _EducationPageState();
}

class _EducationPageState extends State<EducationPage> {
  @override
  Widget build(BuildContext context) {
    return BuildPlatformScaffold(title: 'Education', child: buildBody());
  }

  Widget buildBody() {
    return Center(
      child: Container(
        margin: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            buildCard('Universidade Castelo Branco (UCB)', 'Rio de Janeiro - Brazil - Graduated December 2010', 'Bachelor\'s Degree, Information Technology'),
            buildCard('Fisk', 'English Course - 8 years', 'Writing: Advanced\nReading: Advanced\nSpeaking: Advanced\n\nI lived 4 month in Ireland for work'),
          ],
        ),
      ),
    );
  }

  Widget buildCard(String title, String company, String description) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17.0,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5, bottom: 15),
              child: Text(
                company,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Text(description),
          ],
        ),
      ),
    );
  }
}
