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
  Widget carimage(String holder, String img) {
    return Container(
      height: 350,
      width: 250,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
        child: Container(
          child: FadeInImage(
            placeholder: AssetImage(holder),
            image: AssetImage(img),
            fadeInDuration: const Duration(
              seconds: 5,
            ),
          ),
        ),
      ),
    );
  }

  // Widget barby(String info) {
  //   return Container(
  //     height: 50.0,
  //     width: 200.0,
  //     child: Column(
  //       children: [
  //         Text(info,
  //             style: TextStyle(
  //                 fontSize: 20.0,
  //                 fontWeight: FontWeight.bold,
  //                 color: Colors.cyan)),
  //       ],
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fade in Image"),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          FittedBox(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      carimage("../images/p1.jpg", "../images/p1.jpg"),
                      carimage("../images/p2.jpg", "../images/p2.jpg"),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // barby("Belle Voiture"),
                      // barby("Belle Voiture"),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      carimage("../images/p1.jpg", "../images/p1.jpg"),
                      carimage("../images/p2.jpg", "../images/p2.jpg"),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // barby("Belle Voiture"),
                      // barby("Belle Voiture"),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      carimage("../images/p1.jpg", "../images/p1.jpg"),
                      carimage("../images/p2.jpg", "../images/p2.jpg"),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // barby("Belle Voiture"),
                      // barby("Belle Voiture"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
