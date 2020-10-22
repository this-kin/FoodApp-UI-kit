import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  final List<String> _category = ["Food", "Offers"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _category.length,
          itemBuilder: (_, int index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 25, 0),
              child: Text(
                _category[index],
                style: TextStyle(
                    color: selectedIndex == index ? Colors.black : Colors.grey,
                    fontSize: 35,
                    decoration: selectedIndex == index
                        ? TextDecoration.underline
                        : TextDecoration.none),
              ),
            );
          }),
    );
  }
}
