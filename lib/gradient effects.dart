import 'package:flutter/material.dart';

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
  LinearGradient getLG() {
    return LinearGradient(
      colors: [
        Colors.white,
        Colors.teal,
        Colors.red,
        Colors.blue,
      ],
      begin: Alignment(-1.0, 0.0),
      end: Alignment.bottomCenter,
      // stops: [0.1, 0.3, 0.1],
      tileMode: TileMode.mirror,
    );
  }

  RadialGradient getRG() {
    return RadialGradient(
      colors: [
        Colors.lime,
        Colors.lightBlueAccent,
        Colors.teal,
      ],
      center: Alignment.topRight,
      radius: 2.0,
      tileMode: TileMode.mirror,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gradient Effects"),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: getRG(),
            ),
          ),
        ],
      ),
    );
  }
}
