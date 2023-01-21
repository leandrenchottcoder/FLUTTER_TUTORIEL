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
  List<String> categories = [
    'Assigné à',
    'Tâche',
    'Priorité',
    'Statut',
  ];
  final List<planning> affichage = [
    planning(
      taskname: "Design template",
      assign: "Alain",
      colors: Colors.yellow,
      statut: 'En cours',
    ),
    planning(
      taskname: "Design template",
      assign: "Alain",
      colors: Colors.pink,
      statut: 'En cours',
    ),
    planning(
      taskname: "Design template",
      assign: "Alain",
      colors: Colors.green,
      statut: 'En cours',
    ),
    planning(
      taskname: "Design template",
      assign: "Alain",
      colors: Colors.red,
      statut: 'En cours',
    ),
    planning(
      taskname: "Design template",
      assign: "Alain",
      colors: Colors.white,
      statut: 'En cours',
    ),
    planning(
      taskname: "Design template",
      assign: "Alain",
      colors: Colors.pink,
      statut: 'En cours',
    ),
    planning(
      taskname: "Design template",
      assign: "Alain",
      colors: Colors.purple,
      statut: 'En cours',
    ),
    planning(
      taskname: "Design template",
      assign: "Alain",
      colors: Colors.blue,
      statut: 'En cours',
    ),
    planning(
      taskname: "Design template",
      assign: "Alain",
      colors: Colors.green,
      statut: 'En cours',
    ),
    planning(
      taskname: "Site Web",
      assign: "Jean",
      colors: Colors.teal,
      statut: 'En cours',
    ),
    planning(
      taskname: "Design Site",
      assign: "Carmen",
      colors: Colors.yellow,
      statut: 'En cours',
    ),
    planning(
      taskname: "Design Site",
      assign: "Zeinab",
      colors: Colors.red,
      statut: 'En cours',
    ),
    planning(
      taskname: "Design Site",
      assign: "Yasmine",
      colors: Colors.cyan,
      statut: 'En cours',
    ),
    planning(
      taskname: "Design Site",
      assign: "Leandre",
      colors: Colors.cyan,
      statut: 'En cours',
    ),
    planning(
      taskname: "Design Site",
      assign: "Grâce",
      colors: Colors.grey,
      statut: 'En cours',
    ),
    planning(
      taskname: "Design Site",
      assign: "Emmanuelle",
      colors: Colors.green,
      statut: 'En cours',
    ),
    planning(
      taskname: "Design Site",
      assign: "Aristide",
      colors: Colors.blue,
      statut: 'En cours',
    ),
    planning(
      taskname: "Design Site",
      assign: "Ali",
      colors: Colors.yellow,
      statut: 'En cours',
    ),
    planning(
      taskname: "Design Site",
      assign: "Hamed",
      colors: Colors.teal,
      statut: 'En cours',
    ),
    planning(
      taskname: "Design Site",
      assign: "Leandre",
      colors: Colors.cyan,
      statut: 'En cours',
    ),
    planning(
      taskname: "Design Site",
      assign: "Ange",
      colors: Colors.green,
      statut: 'En cours',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reorderable ListView"),
      ),
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('../images/img1.jpg'),
                    ),
                  ),
                ),
                Positioned(
                  top: 60,
                  left: 30,
                  right: 30,
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 2.0,
                      sigmaY: 2.0,
                    ),
                    child: Container(
                      color: Colors.white.withOpacity(0.1),
                      child: Container(
                        height: 70.0,
                        width: 300.0,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.4),
                          borderRadius: BorderRadius.all(Radius.circular(25.0)),
                        ),
                        child: Center(
                          child: Text("Objectifs de l'équipe",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 30.0)),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 150,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 20.0,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.4),
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categories.length,
                      itemBuilder: (BuildContext context, index) => Padding(
                        padding: EdgeInsets.symmetric(horizontal: 14.0),
                        child: Text(categories[index],
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0)),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 185.0,
                  left: 2,
                  right: 2,
                  bottom: 5,
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: ReorderableListView(
                      children: List.generate(affichage.length, (index) {
                        return Pagewidget(
                            entry: affichage[index],
                            key: ValueKey("value$index"));
                      }),
                      onReorder: (int oldIndex, int newIndex) {
                        setState(() {
                          if (newIndex > oldIndex) {
                            newIndex -= 1;
                          }
                          final planning index = affichage.removeAt(oldIndex);
                          affichage.insert(newIndex, index);
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class planning {
  final String taskname;
  final String assign;
  final String statut;
  final Color colors;
  planning(
      {required this.taskname,
      required this.assign,
      required this.statut,
      required this.colors});
}

class Pagewidget extends StatelessWidget {
  final planning entry;
  const Pagewidget({super.key, required this.entry});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 15.0),
      child: Material(
        color: Colors.black.withOpacity(0.7),
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(entry.assign,
                      style: TextStyle(fontSize: 20.0, color: entry.colors)),
                  Text(entry.taskname,
                      style: TextStyle(fontSize: 20.0, color: Colors.white)),
                  Container(
                    width: 15.0,
                    height: 15.0,
                    color: entry.colors,
                  ),
                  Text(entry.statut,
                      style: TextStyle(fontSize: 20.0, color: Colors.white)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
