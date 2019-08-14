import 'package:flutter/material.dart';
import 'package:flutter_curriculum/src/common/widgets/platformScaffold.dart';

class EducationPage extends StatefulWidget {
  @override
  _EducationPageState createState() => _EducationPageState();
}

class _EducationPageState extends State<EducationPage> {
  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(icon: Icons.school, title: 'Education', child: buildBody());
  }

  Widget buildBody() {
    return Text('ccc');
  }
}
