import 'package:flutter/material.dart';
import 'package:foodapp_ui/utils/ingredients.dart';

class Ingredient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.yellow,
      height: 120,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: ingredList.length,
          itemBuilder: (_, int index) {
            return Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                width: 100,
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset(1, 1),
                          blurRadius: 1),
                      BoxShadow(
                          color: Colors.white,
                          offset: Offset(-2, -2),
                          blurRadius: 1),
                    ]),
                child: Center(
                  child: Image.asset(
                    ingredList[index].imgUrl,
                    height: 70,
                    width: 100,
                  ),
                ),
              ),
            );
          }),
    );
  }
}
