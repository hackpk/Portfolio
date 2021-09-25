import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Utilites/constants.dart';

class LeftBody extends StatefulWidget {
  LeftBody({Key key}) : super(key: key);

  @override
  _LeftBodyState createState() => _LeftBodyState();
}

class _LeftBodyState extends State<LeftBody> {
  //Get text for the side bar
  getText(String text) {
    bool isHovering = false;
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      curve: Curves.ease,
      padding: EdgeInsets.all(isHovering ? 2 : 3),
      decoration: BoxDecoration(
        color: isHovering ? Colors.brown : Colors.transparent,
        borderRadius: BorderRadius.circular(15),
      ),
      child: InkWell(
        onTap: () {},
        onHover: (val) {
          setState(() {
            isHovering = val;
          });
        },
        child: Text(
          text,
          style: GoogleFonts.bilbo(
            fontSize: 30,
            letterSpacing: 2,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 8,
      type: MaterialType.canvas,
      color: Colors.orange.shade300,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width * 0.18,
        child: Padding(
          padding: EdgeInsets.only(left: 6, right: 6),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Material(
                elevation: 9,
                borderRadius: BorderRadius.circular(80),
                // type: MaterialType.circle,
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(profileImg), fit: BoxFit.cover),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Container(
                  height: 80,
                  width: 180,
                  child: Center(
                    child: Text(
                      'Wizard is here',
                      style: GoogleFonts.amita(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 140,
                width: 180,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    getText('About Me'),
                    getText('Experience'),
                    getText('Contact'),
                  ],
                ),
              ),
              Container(
                height: 100,
                width: 180,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.gif),
                    Icon(Icons.insert_invitation),
                    Icon(Icons.insert_invitation),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
