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
  late List<Geo> geos;

  void initState() {
    geos = Geo.getgeo();
    super.initState();
  }

  Widget tablesgeo() {
    return DataTable(
        columns: [
          DataColumn(
              label: Text("Pays",
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 10.0))),
          DataColumn(
              label: Text("Capitale",
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 10.0))),
          DataColumn(
              label: Text("Continent",
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 10.0))),
        ],
        rows: geos
            .map((geo) => DataRow(cells: [
                  DataCell(
                      Text('${geo.pays}', style: TextStyle(fontSize: 10.0))),
                  DataCell(Text('${geo.capitale}',
                      style: TextStyle(fontSize: 10.0))),
                  DataCell(Text('${geo.continent}',
                      style: TextStyle(fontSize: 10.0))),
                ]))
            .toList());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Page 1"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: ListView(
            children: [tablesgeo()],
          ),
        ),
      ),
    );
  }
}

class Geo {
  String? pays;
  String? capitale;
  String? continent;

  Geo({this.pays, this.capitale, this.continent});
  static List<Geo> getgeo() {
    return <Geo>[
      Geo(pays: 'Canada', capitale: 'Ottawa', continent: 'Amerique'),
      Geo(
          pays: 'Côte d\'ivoire',
          capitale: 'YAmoussoukra',
          continent: 'Afrique'),
      Geo(pays: 'France', capitale: 'Paris', continent: 'Europe'),
      Geo(pays: 'Chine', capitale: 'pekin', continent: 'Asie'),
      Geo(pays: 'USA', capitale: 'Washington', continent: 'Amerique'),
      Geo(pays: 'Allemagne', capitale: 'Berlin', continent: 'Europe'),
      Geo(pays: 'Russie', capitale: 'Moscou', continent: 'Europe'),
      Geo(pays: 'Japon', capitale: 'Tokyo', continent: 'Asie'),
      Geo(pays: 'Egypte', capitale: 'Le caire', continent: 'Afrique'),
      Geo(pays: 'Mali', capitale: 'Bamako', continent: 'Afrique'),
      Geo(pays: 'Brasil', capitale: 'Brasilia', continent: 'Amerique'),
      Geo(pays: 'Togo', capitale: 'Lome', continent: 'Afrique'),
      Geo(pays: 'Engleterre', capitale: 'Londre', continent: 'Europe'),
      Geo(pays: 'Pays bas', capitale: 'Amsterdam', continent: 'Europe'),
    ];
  }
}
