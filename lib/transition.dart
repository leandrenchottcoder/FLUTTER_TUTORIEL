import 'package:flutter/material.dart';

Widget transition(String txt, AnimationController controler) {
  return SlideTransition(
    position: Tween<Offset>(
      begin: Offset(0.0, -0.8),
      end: Offset.zero,
    ).animate(controler),
    child: Text(txt,
        style: TextStyle(
          color: Colors.white.withOpacity(0.8),
        )),
  );
}
