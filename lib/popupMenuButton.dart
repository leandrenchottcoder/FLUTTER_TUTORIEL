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
  Animal SelectAnimal = choix[0];

  select(Animal info) {
    setState(() {
      SelectAnimal = info;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PopupMenuButton"),
        actions: [
          PopupMenuButton(
            icon: Icon(Icons.menu),
            elevation: 14.0,
            initialValue: choix[0],
            onCanceled: () {
              print("Vous n'aviez rien selectionner");
            },
            onSelected: select,
            itemBuilder: (BuildContext context) {
              return choix.map((Animal info) {
                return PopupMenuItem<Animal>(
                  child: Text("${info.name}"),
                  value: info,
                );
              }).toList();
            },
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Affichage(
                      info: SelectAnimal,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Animal {
  String? name;
  String? image;
  Animal({this.name, this.image});
}

List<Animal> choix = <Animal>[
  Animal(name: "Brabus 1", image: '../images/br1.jpg'),
  Animal(name: "Brabus 2", image: '../images/br2.jpg'),
  Animal(name: "Brabus 3", image: '../images/br3.jpg'),
  Animal(name: "Peugeot 1", image: '../images/p1.jpg'),
  Animal(name: "Peugeot 2", image: '../images/p2.jpg'),
  Animal(name: "Mercedes 1", image: '../images/m18.jpg'),
  Animal(name: "Mercedes 2", image: '../images/m17.jpg'),
];

class Affichage extends StatelessWidget {
  final Animal info;
  const Affichage({super.key, required this.info});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: Column(
          children: [
            Text('${info.name.toString()}',
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
            Image.asset(
              '${info.image.toString()}',
              height: 400.0,
              width: 400.0,
            )
          ],
        ),
      ),
    );
  }
}
