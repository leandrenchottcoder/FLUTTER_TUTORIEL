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
  int count = 0;
  int decount = 0;
  _incremente() {
    setState(() {
      count++;
    });
  }

  _desincremente() {
    setState(() {
      decount--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FlatButton & IconButton"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              textAlign: TextAlign.center,
              " J\'aime : ${count}",
              style: TextStyle(fontSize: 40.0),
            ),
            Center(
              child: IconButton(
                onPressed: () {
                  _incremente();
                },
                icon: Icon(
                  Icons.thumb_up,
                  size: 50.0,
                ),
                tooltip: "J\'aime",
                color: Colors.green,
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Text(
              textAlign: TextAlign.center,
              " J\'aime pas : ${decount}",
              style: TextStyle(fontSize: 40.0),
            ),
            Center(
              child: IconButton(
                onPressed: () {
                  _desincremente();
                },
                icon: Icon(
                  Icons.thumb_down,
                  size: 50.0,
                ),
                color: Colors.red,
                tooltip: "J\'aime pas",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
