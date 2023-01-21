import 'package:flutter/material.dart';

var cosmetics = [
  {"name ": "Chaussure", "photo": "../images/0.jpg", "price": "\$18"},
  {"name ": "Chaussure", "photo": "../images/1.jpg", "price": "\$20"},
  {"name ": "Chaussure", "photo": "../images/2.jpg", "price": "\$9"},
  {"name ": "Chaussure", "photo": "../images/3.jpg", "price": "\$30"},
  {"name ": "Chaussure", "photo": "../images/4.jpg", "price": "\$22"},
  {"name ": "Chaussure", "photo": "../images/5.jpg", "price": "\$12"},
  {"name ": "Chaussure", "photo": "../images/6.jpg", "price": "\$19"},
  {"name ": "Chaussure", "photo": "../images/7.jpg", "price": "\$17"},
  {"name ": "Chaussure", "photo": "../images/8.jpg", "price": "\$15"},
  {"name ": "Chaussure", "photo": "../images/9.jpg", "price": "\$25"},
  {"name ": "Chaussure", "photo": "../images/10.jpg", "price": "\$15"},
  {"name ": "Chaussure", "photo": "../images/11.jpg", "price": "\$39"},
  {"name ": "Chaussure", "photo": "../images/12.jpg", "price": "\$7"},
  {"name ": "Chaussure", "photo": "../images/13.jpg", "price": "\$12"},
  {"name ": "Chaussure", "photo": "../images/14.jpg", "price": "\$11"},
  {"name ": "Chaussure", "photo": "../images/15.jpg", "price": "\$27"},
];

Widget newcollection(itemIndex) {
  final gleinfo = cosmetics[itemIndex];
  final String? imageposter = gleinfo['photo'];
  return Container(
    margin: EdgeInsets.all(24.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(20.0)),
    ),
    child: FittedBox(
      child: Column(
        children: [
          Image.asset(
            '../images/$imageposter',
            width: 150,
            height: 150,
          ),
          Text("${gleinfo['name']}",
              style: TextStyle(color: Color(0XFFAD4D39), fontSize: 20.0)),
          Text("${gleinfo['price']}",
              style: TextStyle(color: Colors.black, fontSize: 20.0)),
        ],
      ),
    ),
  );
}
