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
  Widget carimage(String img) {
    return Container(
      height: 600.0,
      width: 600.0,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(65),
          topRight: Radius.circular(65),
        ),
        child: Image(
          image: AssetImage(img),
        ),
      ),
    );
  }

  Widget barby(String info, String subtitle) {
    return Container(
      height: 150.0,
      width: 450.0,
      child: Column(
        children: [
          Text(info,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.purple)),
          Text(subtitle,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.black)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FittedBox"),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: Container(
              child: FittedBox(
                child: Material(
                  color: Colors.white,
                  elevation: 10.0,
                  shadowColor: Colors.grey,
                  borderRadius: BorderRadius.circular(65.0),
                  child: Column(
                    children: [
                      carimage('../images/p1.jpg'),
                      Padding(
                        padding: EdgeInsets.all(5.0),
                      ),
                      barby("Voiture blanche + moteur d'avion",
                          "Cette voiture vous donne la possibilité de parcourir un certain nombre de km sans avoir de problème en route"),
                      SizedBox(
                        height: 10.0,
                        child: Container(
                          width: 400.0,
                          color: Colors.grey,
                        ),
                      ),
                      carimage('../images/p2.jpg'),
                      Padding(
                        padding: EdgeInsets.all(5.0),
                      ),
                      barby("Voiture blanche + moteur d'avion",
                          "Cette voiture vous donne la possibilité de parcourir un certain nombre de km sans avoir de problème en route"),
                      SizedBox(
                        height: 10.0,
                        child: Container(
                          width: 400.0,
                          color: Colors.grey,
                        ),
                      ),
                      carimage('../images/m13.jpg'),
                      Padding(
                        padding: EdgeInsets.all(5.0),
                      ),
                      barby("Voiture blanche + moteur d'avion",
                          "Cette voiture vous donne la possibilité de parcourir un certain nombre de km sans avoir de problème en route"),
                      SizedBox(
                        height: 10.0,
                        child: Container(
                          width: 400.0,
                          color: Colors.grey,
                        ),
                      ),
                      carimage('../images/r2.jpg'),
                      Padding(
                        padding: EdgeInsets.all(5.0),
                      ),
                      barby("Voiture blanche + moteur d'avion",
                          "Cette voiture vous donne la possibilité de parcourir un certain nombre de km sans avoir de problème en route"),
                      SizedBox(
                        height: 10.0,
                        child: Container(
                          width: 400.0,
                          color: Colors.grey,
                        ),
                      ),
                      carimage('../images/b3.jpg'),
                      Padding(
                        padding: EdgeInsets.all(5.0),
                      ),
                      barby("Voiture blanche + moteur d'avion",
                          "Cette voiture vous donne la possibilité de parcourir un certain nombre de km sans avoir de problème en route"),
                      SizedBox(
                        height: 10.0,
                        child: Container(
                          width: 400.0,
                          color: Colors.grey,
                        ),
                      ),
                      carimage('../images/b2.jpg'),
                      Padding(
                        padding: EdgeInsets.all(5.0),
                      ),
                      barby("Voiture blanche + moteur d'avion",
                          "Cette voiture vous donne la possibilité de parcourir un certain nombre de km sans avoir de problème en route"),
                      SizedBox(
                        height: 10.0,
                        child: Container(
                          width: 400.0,
                          color: Colors.grey,
                        ),
                      ),
                      carimage('../images/m5.jpg'),
                      Padding(
                        padding: EdgeInsets.all(5.0),
                      ),
                      barby("Voiture blanche + moteur d'avion",
                          "Cette voiture vous donne la possibilité de parcourir un certain nombre de km sans avoir de problème en route"),
                      SizedBox(
                        height: 10.0,
                        child: Container(
                          width: 400.0,
                          color: Colors.grey,
                        ),
                      ),
                      carimage('../images/m16.jpg'),
                      Padding(
                        padding: EdgeInsets.all(5.0),
                      ),
                      barby("Voiture blanche + moteur d'avion",
                          "Cette voiture vous donne la possibilité de parcourir un certain nombre de km sans avoir de problème en route"),
                      SizedBox(
                        height: 10.0,
                        child: Container(
                          width: 400.0,
                          color: Colors.grey,
                        ),
                      ),
                      carimage('../images/m10.png'),
                      Padding(
                        padding: EdgeInsets.all(5.0),
                      ),
                      barby("Voiture blanche + moteur d'avion",
                          "Cette voiture vous donne la possibilité de parcourir un certain nombre de km sans avoir de problème en route"),
                      SizedBox(
                        height: 10.0,
                        child: Container(
                          width: 400.0,
                          color: Colors.grey,
                        ),
                      ),
                      carimage('../images/m7.jpg'),
                      Padding(
                        padding: EdgeInsets.all(5.0),
                      ),
                      barby("Voiture blanche + moteur d'avion",
                          "Cette voiture vous donne la possibilité de parcourir un certain nombre de km sans avoir de problème en route"),
                      SizedBox(
                        height: 10.0,
                        child: Container(
                          width: 400.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
