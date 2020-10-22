import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Toppers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
        color: Colors.purpleAccent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(20, 40, 0, 0),
              child: Row(
                children: <Widget>[
                  Text(
                    "Top of the week",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                  Icon(
                    AntDesign.down,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Image.asset(
              "images/sausage.png",
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Text(
                "Delicious\nFood",
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
              child: Text(
                "Let us help you discover the\nbest food of the week",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
                decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent,
                    borderRadius: BorderRadius.circular(15)),
                width: 120,
                height: 50,
                margin: EdgeInsets.fromLTRB(20, 15, 0, 0),
                child: Center(
                    child: Text(
                  "Get Started",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                )))
          ],
        ),
      ),
    );
  }
}
