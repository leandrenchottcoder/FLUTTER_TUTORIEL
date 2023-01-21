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
  late List<BottomNavigationBarItem> _items;
  int _id = 0;
  String? _value;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _items = [];
    _items.add(BottomNavigationBarItem(
      icon: Icon(Icons.lock, color: Colors.teal),
      label: "Cadenas",
    ));
    _items.add(BottomNavigationBarItem(
      icon: Icon(Icons.key, color: Colors.teal),
      label: "clé",
    ));
    _items.add(BottomNavigationBarItem(
      icon: Icon(Icons.car_crash, color: Colors.teal),
      label: "Voiture",
    ));
    _items.add(BottomNavigationBarItem(
      icon: Icon(Icons.android, color: Colors.teal),
      label: "Android",
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NavigationBar"),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${_value}" == "null" ? "" : "${_value}",
                style: TextStyle(fontSize: 40.0), textAlign: TextAlign.center),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _items,
        currentIndex: _id,
        fixedColor: Colors.teal,
        onTap: (int item) {
          setState(() {
            _id = item;
            _value =
                " Vous avez cliquer sur le NavigationBar ${(_id + 1).toString()}";
          });
        },
      ),
    );
  }
}
