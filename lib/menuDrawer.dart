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
        backgroundColor: Colors.teal,
        title: Text("Menu Drawer"),
      ),
      drawer: ListView(
        padding: EdgeInsets.only(right: 80.0, top: 20.0),
        children: [
          DrawerHeader(
            padding: EdgeInsets.only(left: 50.0, top: 20.0),
            child: Text("Menu"),
            decoration: BoxDecoration(
              color: Colors.teal,
            ),
          ),
          ListTile(
            leading: Icon(Icons.key),
            onTap: () {
              Navigator.pop(context);
            },
            title: Text("Compte"),
            subtitle: Text("Confidentialité, sécurité charger, num."),
          ),
          ListTile(
            leading: Icon(Icons.call),
            onTap: () {
              Navigator.pop(context);
            },
            title: Text("Stockage"),
            subtitle: Text("Confidentialité, sécurité charger, num."),
          ),
          ListTile(
            leading: Icon(Icons.lock),
            onTap: () {
              Navigator.pop(context);
            },
            title: Text("Discussions"),
            subtitle: Text("Confidentialité, sécurité charger, num."),
          ),
          ListTile(
            leading: Icon(Icons.help),
            onTap: () {
              Navigator.pop(context);
            },
            title: Text("Aide"),
            subtitle: Text("Confidentialité, sécurité charger, num."),
          ),
        ],
      ),
    );
  }
}
