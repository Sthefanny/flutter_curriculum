import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_curriculum/src/common/widgets/platformScaffold.dart';

class LatestExperiencesPage extends StatefulWidget {
  @override
  _LatestExperiencesPageState createState() => _LatestExperiencesPageState();
}

class _LatestExperiencesPageState extends State<LatestExperiencesPage> {
  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(icon: Icons.business_center, title: 'Latest Experiences', child: buildBody());
  }

  Widget buildBody() {
    return Text('aaa');
  }
}
