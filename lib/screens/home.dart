import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:foodapp_ui/screens/top_dart.dart';
import 'package:foodapp_ui/widgets/bottomNav.dart';
import 'package:foodapp_ui/widgets/catergoryWidget.dart';
import 'package:foodapp_ui/widgets/filter.dart';
import 'package:foodapp_ui/widgets/item.dart';
import 'package:foodapp_ui/widgets/search.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          leading: Icon(Icons.sort),
          title: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Breakfast",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Icon(
                    AntDesign.down,
                    size: 15,
                  ),
                )
              ],
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage("images/myImage.jpg"))),
              ),
            )
          ],
        ),
        backgroundColor: Colors.white,
        body: Container(
          margin: EdgeInsets.fromLTRB(10, 15, 0, 0),
          child: Column(children: <Widget>[
            Category(),
            Search(),
            Filter(),
            ItemView(),
          ]),
        ),
        bottomNavigationBar: Bottom(),
        // bottomNavigationBar: Container(
        //   padding: EdgeInsets.fromLTRB(20, 5, 10, 1),
        //   decoration: BoxDecoration(shape: BoxShape.circle),
        //   child: Bottom(),
        // ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(50))),
          backgroundColor: Colors.white,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return TopDay();
            }));
          },
          child: Icon(
            FlutterIcons.ios_options_ion,
            color: Colors.black,
          ),
        ));
  }
}
