import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_curriculum/src/common/widgets/build_platform_scaffold.dart';

class LatestExperiencesPage extends StatefulWidget {
  @override
  _LatestExperiencesPageState createState() => _LatestExperiencesPageState();
}

class _LatestExperiencesPageState extends State<LatestExperiencesPage> {
  @override
  Widget build(BuildContext context) {
    return BuildPlatformScaffold(title: 'Latest Experiences', child: buildBody());
  }

  Widget buildBody() {
    return Center(
      child: Container(
        margin: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            buildCard('Full Stack / Flutter Developer', 'Fev/19 - Present', 'CEABS Serviços',
                'Development of an airport management system using: .NET, C#, Web Api, Git, CI/CD, AngularJS (version 1.3 and 1.5), Javascript, HTML5, CSS.'),
            buildCard('Full Stack Developer', 'Mar/17 - Fev/19', 'CINQ Technologies - Client: Sita (Ireland)',
                'Development of an airport management system using: .NET, C#, Web Api, Git, CI/CD, AngularJS (version 1.3 and 1.5), Javascript, HTML5, CSS.'),
            buildCard('Full Stack Developer', 'Nov/16 - Mar/17', 'CINQ Technologies - Client: Fibra',
                'A 4-month project to build the new architecture for an existing application. The application itself was built using: SOA Concepts, Entity Server, Web API, .Net Entity Framework, AngularJS, jQuery, Bootstrap, Git'),
            buildCard('CRM Developer', 'Aug/15 - Jun/16', 'Sofhar', 'This role involved working with Microsoft Dynamics CRM developing specific customizations to each company.'),
            buildCard('Full Stack Developer', 'Nov/13 - Jun/15', 'Working Minds',
                'I worked in a service-based project to integrate Nokia\'s and Tim\'s Workflow, using: C#, NHibernate, .Net Framework, Polly, Nancy, StructureMap for IoC/DI, SQL Server, Quartz.Net for scheduled tasks and Git.'),
          ],
        ),
      ),
    );
  }

  Widget buildCard(String title, String date, String company, String description) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                Text(
                  date,
                  style: TextStyle(
                    fontSize: 11.0,
                  ),
                ),
              ],
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
