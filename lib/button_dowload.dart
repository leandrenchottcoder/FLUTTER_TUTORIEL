import 'package:flutter/material.dart';

Widget buttondownload(String text, Function onTap) {
  return Padding(
    padding: EdgeInsets.only(left: 50, top: 10.0),
    child: Material(
      borderRadius: BorderRadius.circular(25),
      color: Color(0XFF1d32a),
      elevation: 4.0,
      shadowColor: Color(0XFF809e00),
      child: InkWell(
        onTap: onTap(),
        splashColor: Color(0XFF809e00),
        child: Container(
          width: 300.0,
          height: 50.0,
          child: Center(
            child: Text(text,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.justify),
          ),
        ),
      ),
    ),
  );
}
