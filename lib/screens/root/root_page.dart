import 'package:flutter/material.dart';
import 'package:portfolio/screens/home/local_widgets/leftbody_widg.dart';
import 'package:portfolio/screens/home/local_widgets/rightbody_widget.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isMenuOpen = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            LeftBody(),
            RightBody(),
          ],
        ));
  }
}
