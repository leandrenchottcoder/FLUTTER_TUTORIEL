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
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
            length: 4,
            child: Scaffold(
                appBar: AppBar(
                  bottom: TabBar(tabs: <Widget>[
                    Tab(child: Icon(Icons.airplanemode_active)),
                    Tab(child: Icon(Icons.all_inclusive)),
                    Tab(child: Icon(Icons.android)),
                    Tab(child: Icon(Icons.announcement)),
                  ]),
                  title: Text("Tabs"),
                ),
                body: TabBarView(
                  children: [
                    Card(
                        child: Image.asset(
                      '../images/m1.jpeg',
                      height: 200,
                    )),
                    Card(
                        child: Image.asset(
                      '../images/m2.jpeg',
                      height: 200,
                    )),
                    Card(
                        child: Image.asset(
                      '../images/m3.jpg',
                      height: 200,
                    )),
                    Card(
                        child: Image.asset(
                      '../images/m4.jpg',
                      height: 200,
                    )),
                  ],
                ))));
  }
}
