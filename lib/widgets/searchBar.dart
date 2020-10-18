import 'package:flutter/material.dart';

class searchBar extends StatelessWidget {
  final _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.fromLTRB(0, 5, 10, 0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: TextField(
        controller: _textController,
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            border: UnderlineInputBorder(),
            hintText: "Search"),
      ),
    );
  }
}
