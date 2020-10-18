import 'package:flutter/material.dart';
import 'package:foodapp_ui/screens/home.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        iconTheme: IconThemeData(color: Colors.black),
        primaryColor: Colors.black),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Container(
          margin: EdgeInsets.all(12),
          width: 20,
          height: 20,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage(
                "images/dammy.jpg",
              ))),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        actions: <Widget>[
          Container(
              padding: EdgeInsets.all(10),
              child: Icon(
                Icons.menu,
                size: 30,
              ))
        ],
      ),
      body: MyApp(),
    );
  }
}
