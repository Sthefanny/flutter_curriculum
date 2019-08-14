import 'package:flutter/material.dart';
import 'package:flutter_curriculum/src/common/widgets/platformScaffold.dart';

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
    return Text('ddd');
  }
}
