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
  int id = 0;
  late List<BottomNavigationBarItem> _items;
  _showDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Alert ${(id + 1).toString()}"),
          );
        });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _items = [];
    _items.add(BottomNavigationBarItem(
      icon: Icon(Icons.local_hospital, color: Colors.blue),
      label: "Clinique",
      tooltip: "Clinique",
    ));
    _items.add(BottomNavigationBarItem(
      icon: Icon(Icons.restaurant_menu, color: Colors.blue),
      label: "Restaurant",
      tooltip: "Restaurant",
    ));
    _items.add(BottomNavigationBarItem(
      icon: Icon(Icons.hotel, color: Colors.blue),
      label: "Hotel",
      tooltip: "Hotel",
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AlertDialog"),
      ),
      body: Center(),
      bottomNavigationBar: BottomNavigationBar(
        items: _items,
        fixedColor: Colors.blue,
        type: BottomNavigationBarType.shifting,
        currentIndex: id,
        onTap: (int item) {
          id = item;
          setState(() {
            _showDialog();
          });
        },
      ),
    );
  }
}
