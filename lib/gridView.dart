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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("GridView"),
        ),
        body: OrientationBuilder(builder: (BuildContext context, Orientation) {
          return GridView.count(
            crossAxisCount: 4,
            crossAxisSpacing: 5.0,
            children: List.generate(20, (index) {
              return Image.asset(
                '../images/m8.jpg',
                height: 70,
                width: 70,
              );
            }),
          );
        }));
  }
}
