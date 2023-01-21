import 'package:flutter/material.dart';
import 'package:tutoriel_flutter/buttons.dart';

Widget buttonicon(IconData icnb) {
  return Padding(
    padding: EdgeInsets.only(top: 25.0, bottom: 30.0),
    child: IconButton(
      onPressed: () {},
      icon: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            width: 2,
            color: Colors.white,
          ),
        ),
        child: Icon(
          icnb,
          color: Colors.black,
          size: 25.0,
        ),
      ),
    ),
  );
}

Widget buttonupdown(IconData icnb) {
  return IconButton(
    onPressed: () {},
    icon: Container(
      width: 25.0,
      height: 40.0,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Icon(icnb, color: Colors.white, size: 25.0),
    ),
  );
}
