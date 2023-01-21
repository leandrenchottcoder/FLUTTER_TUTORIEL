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
  bool flutter = true;
  bool dart = true;

  _flutter() {
    setState(() {
      flutter = !flutter;
    });
  }

  _dart() {
    setState(() {
      dart = !dart;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RaisedButton"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text((flutter) ? "Bienvenu sur FLUTTER" : "J'adore FLUTTER",
                  style: TextStyle(fontSize: 40.0, color: Colors.green),
                  textAlign: TextAlign.center),
              SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (states) => Colors.green)),
                  onPressed: () {
                    _flutter();
                  },
                  child: Text("FLUTTER")),
              SizedBox(height: 20.0),
              Text(
                (dart) ? "Bienvenu sur DART" : "J'adore DART",
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.blue,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (states) => Colors.blue)),
                  onPressed: () {
                    _dart();
                  },
                  child: Text("DART"))
            ],
          ),
        ),
      ),
    );
  }
}
