import 'package:flutter/material.dart';

class ProgressPaint extends CustomPainter {
  Color colorCircle;
  Color completedPercentCircle;
  double completedPercent;
  double circleSize;
  ProgressPaint(
      {required this.colorCircle,
      required this.completedPercentCircle,
      required this.completedPercent,
      required this.circleSize});

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
}
