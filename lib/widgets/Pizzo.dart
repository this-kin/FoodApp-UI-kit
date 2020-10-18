import 'package:flutter/material.dart';
import 'package:foodapp_ui/utils/popular_item.dart';
import 'package:foodapp_ui/widgets/ingredient.dart';

class PizzaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 20,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.yellowAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: IconButton(
                    icon: Icon(
                      Icons.star,
                      color: Colors.white,
                    ),
                    onPressed: () {}),
              ),
            ),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: Stack(
          children: <Widget>[
            Container(
                padding: const EdgeInsets.fromLTRB(110, 90, 0, 0),
                child: Image.asset(pizzaFav.imageUrl)),
            ListView(
              children: <Widget>[
                Text(
                  "Primavera",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                ),
                Text(
                  "Pizza",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 25),
                  child: Text(
                    pizzaFav.price,
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 30,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Text(
                  "Size",
                  style: TextStyle(color: Colors.grey),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Text(
                    "Medium ${pizzaFav.weight}",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  "Crust",
                  style: TextStyle(color: Colors.grey),
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: Text(
                      "Thin Crust",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                Text(
                  "Delivery",
                  style: TextStyle(color: Colors.grey),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Text(
                    "30 min",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Text(
                    "Ingredients",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Ingredient(),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: InkWell(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                          color: Colors.yellowAccent),
                      height: 50,
                      width: 70,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Place an order",
                            style: TextStyle(fontSize: 15),
                          ),
                          Icon(Icons.navigate_next)
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
