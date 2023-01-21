import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';

main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: myApp(),
    ),
  );
}

class myApp extends StatefulWidget {
  const myApp({super.key});

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  int maxstar = 5;
  double rating1 = 3;
  double rating2 = 1;
  double rating3 = 2;
  double rating4 = 4;
  Widget details(String image, String hotel, double rate, Color color) {
    return Container(
      child: Column(
        children: [
          Container(
            child: Row(
              children: [
                Image.asset(image, fit: BoxFit.cover, width: 340, height: 300),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Text(hotel,
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold)),
                StarRating(
                  size: 40.0,
                  color: color,
                  borderColor: color,
                  rating: rate,
                  starCount: maxstar,
                  onRatingChanged: (rate) {
                    if (color == Colors.blue) {
                      rating1 = rate;
                    }
                    if (color == Colors.red) {
                      rating2 = rate;
                    }
                    if (color == Colors.green) {
                      rating3 = rate;
                    }
                    if (color == Colors.purple) {
                      rating4 = rate;
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rating"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            details("../images/br1.jpg", "Brabus 1", rating1, Colors.blue),
            details("../images/br2.jpg", "Brabus 2", rating2, Colors.red),
            details(
                "../images/m13.jpg", "Mercedez GLE ", rating3, Colors.green),
            details("../images/r1.jpg", "Roll Royce ", rating4, Colors.purple),
          ],
        ),
      ),
    );
  }
}
