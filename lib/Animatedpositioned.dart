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
  GlobalKey rouge = GlobalKey();
  GlobalKey jaune = GlobalKey();
  GlobalKey vert = GlobalKey();
  String image = "../images/br1.jpg";
  String image1 = "../images/br1.jpg";
  String image2 = "../images/r1.jpg";
  String image3 = "../images/br2.jpg";
  bool b = true;
  bool c = false;

  move(int a) {
    GlobalKey gl;

    switch (a) {
      case 1:
        {
          gl = rouge;
          image = image1;
          b = true;
          c = false;
        }
        break;
      case 2:
        {
          gl = jaune;
          image = image2;
          b = false;
          c = true;
        }
        break;
      case 3:
        {
          gl = vert;
          image = image3;
          b = false;
          c = false;
        }
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Container(
            height: 30.0,
            width: 30.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(
                width: 2,
                color: Colors.white,
              ),
            ),
            child: Icon(Icons.keyboard_arrow_left,
                color: Colors.black, size: 25.0),
          ),
        ),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart, color: Colors.black),
          ),
        ],
        title: Text("AnimatedPosition",
            style: TextStyle(
                fontSize: 30.0,
                fontStyle: FontStyle.italic,
                color: Colors.black,
                fontWeight: FontWeight.bold)),
        backgroundColor: b
            ? Colors.red
            : c
                ? Colors.yellow
                : Colors.green,
      ),
      body: Container(
        color: b
            ? Colors.red
            : c
                ? Colors.yellow
                : Colors.green,
        child: Column(
          children: [
            Expanded(
              flex: 6,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                    topRight: Radius.circular(70),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Stack(
                        children: [
                          Container(
                            height: 30.0,
                            width: 90.0,
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(),
                              color: b
                                  ? Colors.red
                                  : c
                                      ? Colors.yellow
                                      : Colors.green,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 25.0,
                                right: 50.0,
                                top: 30.0,
                                bottom: 20.0),
                            child: Container(
                              child: Row(
                                children: [
                                  MaterialButton(
                                    key: rouge,
                                    onPressed: () {
                                      setState(() {
                                        move(1);
                                      });
                                    },
                                    child: Text("Rouge",
                                        style: TextStyle(
                                            fontStyle: FontStyle.italic,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  MaterialButton(
                                    key: jaune,
                                    onPressed: () {
                                      setState(() {
                                        move(2);
                                      });
                                    },
                                    child: Text("Jaune",
                                        style: TextStyle(
                                            fontStyle: FontStyle.italic,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  MaterialButton(
                                    key: vert,
                                    onPressed: () {
                                      setState(() {
                                        move(3);
                                      });
                                    },
                                    child: Text("Vert",
                                        style: TextStyle(
                                            fontStyle: FontStyle.italic,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 12,
                      child: Image.asset(
                        '${image}',
                        width: 400.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.white,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(70),
                      topRight: Radius.circular(70),
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Padding(
                          padding: EdgeInsets.only(left: 50, top: 30),
                          child: Column(
                            children: [
                              Text("Soldes",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.0,
                                  )),
                              Text("50\$",
                                  style: TextStyle(
                                    color: b
                                        ? Colors.red
                                        : c
                                            ? Colors.yellow
                                            : Colors.green,
                                    fontSize: 25.0,
                                  )),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: EdgeInsets.only(
                            right: 10.0,
                          ),
                          child: Container(
                            width: 50.0,
                            height: 50.0,
                            decoration: ShapeDecoration(
                              color: b
                                  ? Colors.red
                                  : c
                                      ? Colors.yellow
                                      : Colors.green,
                              shape: StadiumBorder(),
                            ),
                            child: Text("Achat",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
