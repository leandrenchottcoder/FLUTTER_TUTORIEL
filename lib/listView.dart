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
  Widget listView() {
    return ListView(
      padding: EdgeInsets.all(20.0),
      children: [
        ListTile(
          leading: Icon(Icons.flight_takeoff, color: Colors.black),
          title: Text("COTE D\'IVOIRE - ABIDJAN"),
          subtitle: Text("Décollage 12h 30 min"),
        ),
        ListTile(
          leading: Icon(Icons.flight_land, color: Colors.black),
          title: Text("FRANCE - PARIS"),
          subtitle: Text("Décollage 12h 30 min"),
        ),
        ListTile(
          leading: Icon(Icons.flight_land, color: Colors.black),
          title: Text("ESPAGNE - MADRID"),
          subtitle: Text("Décollage 12h 30 min"),
        ),
        ListTile(
          leading: Icon(Icons.flight_land, color: Colors.black),
          title: Text("ESPAGNE - MADRID"),
          subtitle: Text("Décollage 12h 30 min"),
        ),
        ListTile(
          leading: Icon(Icons.flight_land, color: Colors.black),
          title: Text("ESPAGNE - MADRID"),
          subtitle: Text("Décollage 12h 30 min"),
        ),
        ListTile(
          leading: Icon(Icons.flight_land, color: Colors.black),
          title: Text("ESPAGNE - MADRID"),
          subtitle: Text("Décollage 12h 30 min"),
        ),
        ListTile(
          leading: Icon(Icons.flight_land, color: Colors.black),
          title: Text("BENEIN - COTONOU"),
          subtitle: Text("Décollage 12h 30 min"),
        ),
        ListTile(
          leading: Icon(Icons.flight_land, color: Colors.black),
          title: Text("CHINE - PEKIN"),
          subtitle: Text("Décollage 12h 30 min"),
        ),
        ListTile(
          leading: Icon(Icons.flight_land, color: Colors.black),
          title: Text("PAYS BAS - AMSTERDAM"),
          subtitle: Text("Décollage 12h 30 min"),
        ),
        ListTile(
          leading: Icon(Icons.flight_land, color: Colors.black),
          title: Text("CAMEROON - YAOUNDE"),
          subtitle: Text("Décollage 12h 30 min"),
        ),
        ListTile(
          leading: Icon(Icons.flight_land, color: Colors.black),
          title: Text("MALI - BAMAKO"),
          subtitle: Text("Décollage 12h 30 min"),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Center(
            child: Container(
          child: listView(),
        )),
      ),
    );
  }
}
