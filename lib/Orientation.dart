import 'dart:html';
import 'dart:ui';

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
  Widget infoweather() {
    return Column(
      children: [
        Container(
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text("Météo Toronto, ON",
                        style: TextStyle(fontSize: 30.0, color: Colors.yellow)),
                    SizedBox(height: 20.0),
                    Row(
                      children: [
                        Text("9°C",
                            style: TextStyle(
                                fontSize: 30.0, color: Colors.yellow)),
                        SizedBox(
                          height: 4.0,
                        ),
                        Text("RESENTIR COMM 8°C",
                            style: TextStyle(
                                fontSize: 20.0, color: Colors.yellow)),
                        SizedBox(
                          height: 4.0,
                        ),
                        Image.asset(
                          '../images/r1.jpg',
                          height: 65.0,
                          width: 65.0,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget infophw() {
    return Column(
      children: [
        Text("Précipitation : 0%",
            style: TextStyle(
                fontSize: 17.0,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
        Text("Humidité : 59%",
            style: TextStyle(
                fontSize: 17.0,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
        Text("Vent : 8km/h",
            style: TextStyle(
                fontSize: 17.0,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
        SizedBox(
          height: 25.0,
        ),
      ],
    );
  }

  Widget infotable() {
    return Column(
      children: [
        Text("Nuageux",
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
        DataTable(
          columns: <DataColumn>[
            DataColumn(
              label: Text("Vent",
                  style: TextStyle(
                      color: Colors.deepOrange, fontWeight: FontWeight.bold)),
            ),
            DataColumn(
              label: Text("Humidité",
                  style: TextStyle(
                      color: Colors.deepOrange, fontWeight: FontWeight.bold)),
            ),
            DataColumn(
              label: Text("Visibilité",
                  style: TextStyle(
                      color: Colors.deepOrange, fontWeight: FontWeight.bold)),
            ),
            DataColumn(
              label: Text("Lever du soleil",
                  style: TextStyle(
                      color: Colors.deepOrange, fontWeight: FontWeight.bold)),
            ),
          ],
          rows: <DataRow>[
            DataRow(cells: <DataCell>[
              DataCell(
                ListTile(
                  title: Text(
                    "7Ekm/h",
                    style: TextStyle(
                        color: Colors.deepOrange, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              DataCell(
                ListTile(
                  title: Text(
                    "53%",
                    style: TextStyle(
                        color: Colors.deepOrange, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              DataCell(
                ListTile(
                  title: Text(
                    "14km",
                    style: TextStyle(
                        color: Colors.deepOrange, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              DataCell(
                ListTile(
                  title: Text(
                    "06h09",
                    style: TextStyle(
                        color: Colors.deepOrange, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ]),
          ],
        ),
      ],
    );
  }

  Widget infoshort() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("PREViSION A COURT TERME",
                  style: TextStyle(color: Colors.white, fontSize: 20.0)),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Ce soir 18h - 6h 5°C",
                style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.yellowAccent,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  '../images/br1.jpg',
                  height: 40.0,
                  width: 40.0,
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text("Nuageux avec pluie en soirée",
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.yellowAccent,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  '../images/br1.jpg',
                  height: 40.0,
                  width: 40.0,
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text("""Pluie pendant la nuit.POP 90%. Pluie: 5-10 mm""",
                    style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.yellowAccent,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Mercredi 18h30 - 6h15 9°C",
                  style: TextStyle(fontSize: 17.0, color: Colors.yellowAccent)),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    '../images/r1.jpg',
                    height: 40.0,
                    width: 40.0,
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text("Pluie le matin et l'après midi",
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.yellowAccent,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("POP 90%. Pluie: 5-10 mm",
                      style: TextStyle(
                          fontSize: 17.0,
                          color: Colors.yellowAccent,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Orientation"),
      ),
      backgroundColor: Colors.black,
      body: OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
          if (orientation == Orientation.portrait) {
            debugPrint("Portrait");
            return SingleChildScrollView(
              child: Column(
                children: [
                  infoweather(),
                  infophw(),
                  infotable(),
                  infoshort(),
                  // Text("Leandre N'chott",
                  //     style: TextStyle(fontSize: 25.0, color: Colors.white)),
                ],
              ),
            );
          } else {
            debugPrint("Paysane");
            return SingleChildScrollView(
              child: Column(
                children: [
                  infoweather(),
                  infophw(),
                  infotable(),
                  infoshort(),
                  // Text("N'chott Leandre",
                  //     style: TextStyle(fontSize: 25.0, color: Colors.purple)),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
