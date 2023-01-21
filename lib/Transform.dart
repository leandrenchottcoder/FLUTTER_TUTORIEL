import 'dart:async';

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
  int index = 0;
  double rep = 0.0;
  Timer? timer;
  List<double> value = [0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 1), (Timer timer) {
      setState(() {
        rep = value[index];
        index++;
        if (index == value.length) {
          index == 0;
        }
      });
    });
  }

  Widget rotation() {
    return Container(
      child: Transform.rotate(
        angle: rep,
        origin: Offset(0.0, 0.0),
        child: Container(
          child: Image(
            image: AssetImage('../images/br1.jpg'),
            height: 150.0,
            width: 150.0,
          ),
        ),
      ),
    );
  }

  Widget scale() {
    return Container(
      child: Transform.scale(
        scale: rep == 0 ? 0 : rep / 50.0,
        origin: Offset(0.0, 0.0),
        child: Container(
          child: Image(
            image: AssetImage('../images/r1.jpg'),
            height: 150.0,
            width: 150.0,
          ),
        ),
      ),
    );
  }

  Widget translate() {
    return Container(
      child: Transform.translate(
        offset: Offset(rep, -rep * 4),
        child: Container(
          child: Image(
            image: AssetImage('../images/m3.jpg'),
            height: 250.0,
            width: 250.0,
          ),
        ),
      ),
    );
  }

  Widget skew() {
    return Container(
      child: Transform(
        transform: Matrix4.skewX(rep / 100),
        child: Container(
          child: Image(
            image: AssetImage('../images/br2.jpg'),
            height: 250.0,
            width: 250.0,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transform"),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: FittedBox(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                ),
                rotation(),
                scale(),
                translate(),
                skew(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
