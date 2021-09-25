import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/screens/home/About_me.dart';
import 'package:portfolio/screens/home/Experience.dart';
import 'package:portfolio/screens/home/contact.dart';

class RightBody extends StatelessWidget {
  const RightBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 0.82,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            About(),
            Experience(),
            Contact(),
          ],
        ),
      ),
    );
  }
}
