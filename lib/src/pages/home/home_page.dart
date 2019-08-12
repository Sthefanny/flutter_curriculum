import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
        children: <Widget>[
          buildImage(),
          buildInfo(),
        ],
      ),
      ),
    );
  }

  Widget buildImage() {
    return Center(
      child: CircleAvatar(backgroundImage: AssetImage("assets/images/my_photo.JPG"), radius: 100.0)     
    );
  }

  Widget buildInfo() {
    return Card(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.all(20),
            title: Text('Sthefanny Gonzaga', textAlign: TextAlign.center, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            subtitle: Column(
              children: <Widget>[
                buildLine('Address', 'Curitiba - Paraná - Brazil'),
                buildLine('Phone', '+55 21 99492-1101'),
                buildLine('E-mail', 'sthefannygonzaga@gmail.com'),
                buildLine('Skype', 'sthefannygonzaga'),
                buildLink('LinkedIn', 'linkedin.com/in/sthefannygonzaga/'),
                buildLink('Github', 'github.com/Sthefanny'),
                // buildLine('Summary', 'I am a full stack developer with knowledge in some front end and back end languages, responsive frameworks and best code practices. I am dedicated to perfecting my craft by learning from more seasoned developers, and continuously making strides to learn all that I can about development.'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildLine(String title, String text) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Row(
        children: <Widget>[
          Text('$title: ', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          Text(text, style: TextStyle(fontSize: 14)),
        ]),
    );
  }
  
  Widget buildLink(String title, String text) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: InkWell(
        child: Row(children: <Widget>[
                  Text('$title: ', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text(text, style: TextStyle(fontSize: 14)),
                ]),
                onTap: () {
                  _launchURL(text);
                },
      ),
    );
  }

  _launchURL(String urlString) async {
    var url = 'https://$urlString';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
