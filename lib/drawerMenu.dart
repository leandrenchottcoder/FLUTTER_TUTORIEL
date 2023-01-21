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
        centerTitle: true,
        title: Text("Drawer Menu", style: TextStyle(fontSize: 20.0)),
      ),
      drawer: ListView(
        padding: EdgeInsets.only(top: 20.0, left: 40.0),
        children: [
          DrawerHeader(
            child: Text("Menu"),
            decoration: BoxDecoration(color: Colors.teal),
          ),
          ListTile(
            title: Text("FLUTTER"),
            subtitle: Text("Dart"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Center(),
      ),
    );
  }
}
