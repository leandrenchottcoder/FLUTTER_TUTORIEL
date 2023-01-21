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
  String info = "";
  bool change = true;
  String a = '../images/br2.jpg';
  String b = '../images/br1.jpg';
  String c = '../images/p1.jpg';
  String d = '../images/p2.jpg';

  onsubmit(String value) {
    setState(() {
      info = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GestureDetector - InkWell"),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Mouvement de la souris : ${info}",
                  style: TextStyle(
                    fontSize: 25,
                  )),
              Row(
                children: [
                  Image.asset(
                    change ? a : b,
                    height: 170,
                    width: 170,
                  ),
                  Image.asset(
                    change ? d : c,
                    height: 170,
                    width: 170,
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    if (change == true) {
                      change = false;
                      onsubmit("Un clique");
                    } else {
                      change = true;
                    }
                  });
                },
                onDoubleTap: () {
                  setState(() {
                    if (change == true) {
                      change = true;
                      onsubmit("Double clique");
                    } else {
                      change = false;
                    }
                  });
                },
                onLongPress: () {
                  onsubmit("Long clique");
                },
                onTapCancel: () {
                  onsubmit("Clique annuler");
                },
                child: Container(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  height: 50.0,
                  width: 130.0,
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text("Validation",
                      style: TextStyle(
                        fontSize: 25,
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
