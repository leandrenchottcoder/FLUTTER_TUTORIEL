// ignore: file_names
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
  final List<Listinfo> executer = [
    Listinfo(
        image: '../images/br1.jpg',
        detailcourse: "Belle Voiture",
        dates: "05/11/2022",
        colors: Colors.orange),
    Listinfo(
        image: '../images/br1.jpg',
        detailcourse: "Belle Voiture",
        dates: "05/11/2022",
        colors: Colors.orange),
    Listinfo(
        image: '../images/br1.jpg',
        detailcourse: "Belle Voiture",
        dates: "05/11/2022",
        colors: Colors.orange),
    Listinfo(
        image: '../images/br1.jpg',
        detailcourse: "Belle Voiture",
        dates: "05/11/2022",
        colors: Colors.orange),
    Listinfo(
        image: '../images/br1.jpg',
        detailcourse: "Belle Voiture",
        dates: "05/11/2022",
        colors: Colors.orange),
    Listinfo(
        image: '../images/br1.jpg',
        detailcourse: "Belle Voiture",
        dates: "05/11/2022",
        colors: Colors.orange),
    Listinfo(
        image: '../images/br1.jpg',
        detailcourse: "Belle Voiture",
        dates: "05/11/2022",
        colors: Colors.orange),
    Listinfo(
        image: '../images/br1.jpg',
        detailcourse: "Belle Voiture",
        dates: "05/11/2022",
        colors: Colors.orange),
    Listinfo(
        image: '../images/br1.jpg',
        detailcourse: "Belle Voiture",
        dates: "05/11/2022",
        colors: Colors.orange),
    Listinfo(
        image: '../images/br1.jpg',
        detailcourse: "Belle Voiture",
        dates: "05/11/2022",
        colors: Colors.orange),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dismissible"),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: executer.length,
        itemBuilder: (context, index) {
          Listinfo ls = executer[index];
          return Dismissible(
            key: Key(ls.detailcourse),
            child: Pagewidget(
              entry: executer[index],
              key: Key(ls.detailcourse),
            ),
            onDismissed: (direction) {
              setState(() {
                executer.removeAt(index);
              });

              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("${ls.detailcourse} suprimé de la liste"),
                duration: const Duration(seconds: 1),
                action: SnackBarAction(
                  label: 'Annuler',
                  onPressed: () {
                    setState(() {
                      executer.add(ls);
                    });
                  },
                ),
              ));
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("${ls.detailcourse} rajouté de la liste"),
                duration: const Duration(seconds: 1),
              ));

              // Scaffold.of(context).showBottomSheet(
              //   (context) => Text(ls.detailcourse + ", Supprimé de la liste"),
              // );
              // Scaffold.of(context).showBottomSheet(
              //   (context) =>
              //       Text(ls.detailcourse + ", Rajouté à la fin de la liste"),
              // );
            },
            background: Container(
              child: Row(
                children: [
                  Icon(Icons.delete, size: 25.0, color: ls.colors),
                  Text("${ls.detailcourse} sera supprimé de la liste",
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            secondaryBackground: Container(
              color: ls.colors,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.delete_forever),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class Listinfo {
  final String image;
  final String detailcourse;
  final String dates;
  final Color colors;
  Listinfo(
      {required this.image,
      required this.detailcourse,
      required this.dates,
      required this.colors});
}

class Pagewidget extends StatelessWidget {
  final Listinfo entry;
  const Pagewidget({super.key, required this.entry});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Material(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(2.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "${entry.image}",
                    width: 70,
                    height: 70,
                  ),
                  Text("${entry.detailcourse}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0)),
                  Text("${entry.dates}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                          color: entry.colors)),
                  Container(
                    width: 5.0,
                    height: 30.0,
                    color: entry.colors,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: SizedBox(
                height: 2,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
