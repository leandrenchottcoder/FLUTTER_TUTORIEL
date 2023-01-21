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
  int compteur = 0;

  _incrementer() {
    setState(() {
      compteur++;
    });
  }

  _desincrementer() {
    setState(() {
      compteur--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("AppBar", style: TextStyle(fontSize: 40.0)),
        leading: Icon(
          Icons.fastfood,
          size: 40.0,
          color: Colors.black,
        ),
        backgroundColor: Colors.teal,
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_circle_down_rounded, color: Colors.red),
            iconSize: 40.0,
            onPressed: () {
              _desincrementer();
            },
          ),
          IconButton(
            icon: Icon(Icons.arrow_circle_up_rounded, color: Colors.yellow),
            iconSize: 40.0,
            onPressed: () {
              _incrementer();
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                iconSize: 70.0,
                color: Colors.blue,
                onPressed: () {},
                icon: Icon(Icons.balance_rounded),
              ),
              Text(
                "${compteur}",
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
