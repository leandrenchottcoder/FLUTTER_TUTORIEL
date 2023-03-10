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
  Widget voiture(String image, Color color, String title, String resume) {
    return Column(
      children: [
        Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    width: 340,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      image: DecorationImage(
                        image: AssetImage(image),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Column(
          children: [
            Row(
              children: [
                Container(
                    height: 25,
                    width: 25,
                    child: Icon(Icons.star, color: color, size: 25)),
                Container(
                    height: 25,
                    width: 25,
                    child: Icon(Icons.star, color: color, size: 25)),
                Container(
                    height: 25,
                    width: 25,
                    child: Icon(Icons.star, color: color, size: 25)),
                Container(
                    height: 25,
                    width: 25,
                    child: Icon(Icons.star, color: color, size: 25)),
                Container(
                    height: 25,
                    width: 25,
                    child: Icon(Icons.star_border, color: color, size: 25)),
                Container(
                  width: 200,
                  child: ExpansionTile(
                    title: Text(title,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                    children: [
                      Text(resume),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expansion Title"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            voiture(
              '../images/br1.jpg',
              Colors.orange,
              "Brabus 1",
              "Chaque ann??e, les universit??s, dont l???une des principales responsabilit??s est de Chaque ann??e, les universit??s, dont l???une des principales responsabilit??s.",
            ),
            voiture(
              '../images/br2.jpg',
              Colors.orange,
              "Brabus 2",
              "Chaque ann??e, les universit??s, dont l???une des principales responsabilit??s est de Chaque ann??e, les universit??s, dont l???une des principales responsabilit??s.",
            ),
            voiture(
              '../images/br3.jpg',
              Colors.orange,
              "Brabus 3",
              "Chaque ann??e, les universit??s, dont l???une des principales responsabilit??s est de Chaque ann??e, les universit??s, dont l???une des principales responsabilit??s.",
            ),
            voiture(
              '../images/m3.jpg',
              Colors.orange,
              "Mercedez",
              "Chaque ann??e, les universit??s, dont l???une des principales responsabilit??s est de Chaque ann??e, les universit??s, dont l???une des principales responsabilit??s.",
            ),
            voiture(
              '../images/r1.jpg',
              Colors.orange,
              "Roll Royce",
              "Chaque ann??e, les universit??s, dont l???une des principales responsabilit??s est de Chaque ann??e, les universit??s, dont l???une des principales responsabilit??s.",
            ),
            voiture(
              '../images/c1.jpg',
              Colors.orange,
              "Camaro chevrolet",
              "Chaque ann??e, les universit??s, dont l???une des principales responsabilit??s est de Chaque ann??e, les universit??s, dont l???une des principales responsabilit??s.",
            ),
            voiture(
              '../images/ma2.jpeg',
              Colors.orange,
              "Maserati",
              "Chaque ann??e, les universit??s, dont l???une des principales responsabilit??s est de Chaque ann??e, les universit??s, dont l???une des principales responsabilit??s.",
            ),
          ],
        ),
      ),
    );
  }
}
