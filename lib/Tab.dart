import 'package:flutter/material.dart';

main() {
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false, home: myApp()),
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
              title: Text("Tabs"),
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(
                    child: Icon(Icons.shop),
                  ),
                  Tab(
                    child: Icon(Icons.icecream),
                  ),
                  Tab(
                    child: Icon(Icons.restart_alt_sharp),
                  ),
                  Tab(
                    child: Icon(Icons.call),
                  ),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                Card(
                    child: Image.asset(
                  '../images/m16.jpg',
                  height: 200,
                )),
                Card(
                    child: Image.asset(
                  '../images/m17.jpg',
                  height: 200,
                )),
                Card(
                    child: Image.asset(
                  '../images/m18.jpg',
                  height: 200,
                )),
                Card(
                    child: Image.asset(
                  '../images/m19.jpg',
                  height: 200,
                )),
              ],
            )),
      ),
    );
  }
}
