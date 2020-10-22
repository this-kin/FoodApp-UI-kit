import 'package:flutter/material.dart';
import 'package:foodapp_ui/models/items_models.dart';
import 'package:foodapp_ui/widgets/top_of_the_week.dart';

class ItemView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 20, 10, 0),
      
      height: 250,
      child: ListView.builder(
          itemCount: itemList.length,
          itemBuilder: (_, int index) {
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return Toppers();
                }));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 110,
                  decoration: BoxDecoration(
                      border: Border(),
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(10, 10),
                            blurRadius: 5),
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0, 0),
                            blurRadius: 0)
                      ]),
                  child: Stack(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(170, 0, 0, 0),
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(itemList[index].imgUrl))),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(30, 25, 0, 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              itemList[index].title,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              itemList[index].ingredients,
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "\$${itemList[index].price}",
                              style: TextStyle(color: Colors.greenAccent),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
