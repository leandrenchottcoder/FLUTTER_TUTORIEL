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
  bool change = false;
  _change() {
    setState(() {
      change = !change;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${change ? "LEANDRE N\'CHOTT" : "N\'CHOTT LEANDRE"}"),
        backgroundColor: (change) ? Colors.green : Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    _change();
                  },
                  child: Text("Change Title")),
            ],
          ),
        ),
      ),
    );
  }
}
