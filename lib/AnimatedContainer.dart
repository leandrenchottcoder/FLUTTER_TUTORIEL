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
  double height = 150.0;
  double width = 200.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedContainer (implicites)"),
      ),
      body: Container(
        // decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //     colors: [
        //       Colors.teal,
        //     ],
        //   ),
        // ),
        color: Colors.teal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Image.asset(
                  '../images/br1.jpg',
                  height: 140.0,
                  width: 110.0,
                ),
                Image.asset(
                  '../images/r1.jpg',
                  height: 140.0,
                  width: 110.0,
                ),
                Image.asset(
                  '../images/m3.jpg',
                  height: 140.0,
                  width: 110.0,
                ),
                // Image.asset(
                //   '../images/br2.jpg',
                //   height: 140.0,
                //   width: 110.0,
                // ),
              ],
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60.0),
                    topRight: Radius.circular(60.0),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 40.0,
                          right: 40.0,
                        ),
                        child: Text(
                          "Nouvelle voiture",
                          style: TextStyle(color: Colors.teal, fontSize: 40.0),
                        ),
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  OutlinedButton(
                                    onPressed: () {
                                      setState(() {
                                        height += 100;
                                        width += 100;
                                      });
                                    },
                                    child: Icon(Icons.zoom_in,
                                        size: 30.0, color: Colors.teal),
                                  ),
                                  AnimatedContainer(
                                    duration: Duration(seconds: 1),
                                    curve: Curves.bounceInOut,
                                    height: height,
                                    width: width,
                                    child: Image.asset(
                                      '../images/br1.jpg',
                                      height: 150,
                                      width: 200,
                                    ),
                                  ),
                                  OutlinedButton(
                                    onPressed: () {
                                      setState(() {
                                        if (height > 100 && width > 100) {
                                          height -= 100;
                                          width -= 100;
                                        }
                                      });
                                    },
                                    child: Icon(Icons.zoom_out,
                                        size: 30.0, color: Colors.teal),
                                  ),
                                ],
                              ),
                            ),
                            Image.asset(
                              '../images/r1.jpg',
                              height: 150,
                              width: 200,
                            ),
                            Image.asset(
                              '../images/m3.jpg',
                              height: 150,
                              width: 200,
                            ),
                            Image.asset(
                              '../images/br3.jpg',
                              height: 150,
                              width: 200,
                            ),
                            Image.asset(
                              '../images/br2.jpg',
                              height: 150,
                              width: 200,
                            ),
                          ],
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
