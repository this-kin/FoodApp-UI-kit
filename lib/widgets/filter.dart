import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Filter extends StatefulWidget {
  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  int selected = 0;
  List<FlatButton> _filters = [
    FlatButton.icon(
        onPressed: () {},
        icon: Icon(
          Icons.menu,
          color: Colors.grey,
        ),
        label: Text(
          "All",
          style: TextStyle(color: Colors.black),
        )),
    FlatButton.icon(
        onPressed: () {},
        icon: Icon(
          FlutterIcons.hamburger_faw5s,
          color: Colors.grey,
        ),
        label: Text(
          "Fast Food",
          style: TextStyle(color: Colors.grey),
        )),
    FlatButton.icon(
        onPressed: () {},
        icon: Icon(
          FlutterIcons.food_fork_drink_mco,
          color: Colors.grey,
        ),
        label: Text(
          "Drinks",
          style: TextStyle(color: Colors.grey),
        ))
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
      child: Container(
          height: 45,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _filters.length,
            itemBuilder: ((_, int index) {
              return Padding(
                padding: const EdgeInsets.all(2),
                child: Container(
                  decoration: BoxDecoration(
                      color: selected == index
                          ? Colors.amber.shade400
                          : Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: _filters[index],
                ),
              );
            }),
          )),
    );
  }
}
