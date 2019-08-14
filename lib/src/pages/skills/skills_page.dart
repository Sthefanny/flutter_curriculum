import 'package:flutter/material.dart';
import 'package:flutter_curriculum/src/common/widgets/platformScaffold.dart';

class SkillsPage extends StatefulWidget {
  @override
  _SkillsPageState createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage> {
  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(icon: Icons.gamepad, title: 'Skills', child: buildBody());
  }

  Widget buildBody() {
    return Text('bbb');
  }
}
