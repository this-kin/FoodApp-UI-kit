import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 0, 10, 2),
      child: Container(
          child: BottomAppBar(
        elevation: 0,
        notchMargin: 20,
        color: Colors.black,
        shape: AutomaticNotchedShape(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
        child: SizedBox(
          height: 45,
          width: 90,
          child: Container(
            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
