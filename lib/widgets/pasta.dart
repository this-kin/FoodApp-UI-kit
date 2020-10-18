import 'package:flutter/material.dart';
import 'package:foodapp_ui/utils/popular_item.dart';

class Pasta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(color: Colors.grey, offset: Offset(5, 5), blurRadius: 1),
          BoxShadow(color: Colors.white, offset: Offset(-4, -4), blurRadius: 1),
        ],
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      height: 150,
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(170, 0, 0, 0),
            alignment: Alignment.centerRight,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    pastaFav.imageUrl,
                  ),
                )),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 5, 0, 0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.star,
                      color: Colors.amberAccent,
                      size: 18,
                    ),
                    Text(
                      pastaFav.top,
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(15, 20, 0, 0),
                child: Text(
                  pastaFav.name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(15, 5, 0, 0),
                child: Text(
                  "Weight ${pastaFav.weight}gr",
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
              Spacer(),
              Row(
                children: <Widget>[
                  Container(
                    width: 70,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.yellowAccent,
                        borderRadius: BorderRadius.circular(7)),
                    child: Center(
                      child: Text("+"),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          size: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(pastaFav.star),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
