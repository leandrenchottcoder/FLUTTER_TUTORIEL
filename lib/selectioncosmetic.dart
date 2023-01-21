import 'package:flutter/material.dart';
import 'cosmetic.dart';

late PageController pageController;

Widget selectioncosmetic(int index) {
  return AnimatedBuilder(
    animation: pageController,
    builder: (BuildContext context, Widget? widget) {
      double value = 1;
      if (pageController.position.haveDimensions) {
        value = pageController.page! - index;
        value = (1 - (value.abs() * 0.3)).clamp(0.0, 1.0);
      }
      return Center(
        child: SizedBox(
          height: Curves.easeInOut.transform(value) * 300,
          width: Curves.easeInOut.transform(value) * 300,
          child: widget,
        ),
      );
    },
    child: Stack(
      alignment: Alignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                offset: Offset(10.0, 10.0),
                blurRadius: 2.0,
                color: Colors.black.withOpacity(0.8),
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
          ),
          margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 30.0),
          child: Stack(
            children: [
              Center(
                child: Hero(
                  tag: cosmetic[index],
                  child: Image(
                    height: 200.0,
                    width: 200.0,
                    image: AssetImage('../images/$index.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
