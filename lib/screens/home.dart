import 'package:flutter/material.dart';
import 'package:foodapp_ui/utils/popular_item.dart';
import 'package:foodapp_ui/widgets/catergory.dart' as cart;
import 'package:foodapp_ui/widgets/coke.dart';
import 'package:foodapp_ui/widgets/pasta.dart';
import 'package:foodapp_ui/widgets/pizza.dart';

import 'package:foodapp_ui/widgets/searchBar.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int onSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          margin: EdgeInsets.fromLTRB(10, 5, 0, 0),
          child: ListView(
            children: <Widget>[
              Text(
                "Food",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              Text(
                "Delivery",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              searchBar(),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Text(
                  "Catergories",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              cart.Catergories(),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                child: Text(
                  "Popular",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 10, 0),
                child: Pizza(),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 10, 0),
                  child: Pasta()),
              Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 10, 0),
                  child: Coke())
            ],
          ),
        ));
  }
}
