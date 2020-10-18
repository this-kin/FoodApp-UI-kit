import 'package:flutter/material.dart';
import 'package:foodapp_ui/utils/catergories_item.dart';

class Catergories extends StatefulWidget {
  @override
  _CatergoriesState createState() => _CatergoriesState();
}

class _CatergoriesState extends State<Catergories> {
  var onSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
      height: 170,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: catergory.length,
          itemBuilder: (_, int index) {
            return Padding(
              padding: const EdgeInsets.all(6),
              child: Container(
                width: 107,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: index == onSelected
                        ? Colors.yellowAccent
                        : Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset(4, 4),
                          blurRadius: 1),
                      BoxShadow(
                          color: Colors.white,
                          offset: Offset(-2, -2),
                          blurRadius: 1),
                    ]),
                padding: const EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image.asset(
                      catergory[index].imageUrl,
                      height: 50,
                      width: 100,
                    ),
                    Text(
                      catergory[index].name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    CircleAvatar(
                        backgroundColor:
                            index == onSelected ? Colors.white : Colors.red,
                        radius: 15,
                        child: Icon(Icons.navigate_next,
                            color: index == onSelected
                                ? Colors.black
                                : Colors.white))
                  ],
                ),
              ),
            );
          }),
    );
  }
}
