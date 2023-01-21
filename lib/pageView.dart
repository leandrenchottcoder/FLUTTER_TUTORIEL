import 'package:flutter/material.dart';

main() {
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false, home: myApp()),
  );
}

class myApp extends StatefulWidget {
  const myApp({super.key});

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("PageView")),
        body: PageView.builder(
          itemBuilder: (BuildContext buildContext, int index) =>
              pagewidget(entry: pages[index]),
          itemCount: pages.length,
        ));
  }
}

class Pageinfo {
  final String title;
  final String image;
  final String description;
  const Pageinfo(this.title, this.image, this.description);
}

final List<Pageinfo> pages = [
  Pageinfo(
      "Meilleur modele N-1", '../images/m7.jpg', "1ère revolution de voiture"),
  Pageinfo(
      "Meilleur modele N-2", '../images/m8.jpg', "2ème revolution de voiture"),
  Pageinfo(
      "Meilleur modele N-3", '../images/m9.jpg', "3ème revolution de voiture"),
  Pageinfo(
      "Meilleur modele N-4", '../images/m19.jpg', "4ème revolution de voiture"),
  Pageinfo(
      "Meilleur modele N-5", '../images/m18.jpg', "5ème revolution de voiture"),
  Pageinfo(
      "Meilleur modele N-6", '../images/m17.jpg', "6ème revolution de voiture"),
  Pageinfo(
      "Meilleur modele N-7", '../images/m16.jpg', "7ème revolution de voiture"),
  Pageinfo(
      "Meilleur modele N-8", '../images/m15.jpg', "8ème revolution de voiture"),
  Pageinfo(
      "Meilleur modele N-9", '../images/m13.jpg', "9ème revolution de voiture"),
  Pageinfo("Meilleur modele N-10", '../images/m14.jpg',
      "10ème revolution de voiture"),
];

class pagewidget extends StatefulWidget {
  final Pageinfo entry;

  const pagewidget({super.key, required this.entry});

  @override
  State<pagewidget> createState() => _pagewidgetState();
}

class _pagewidgetState extends State<pagewidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(widget.entry.title, style: TextStyle(fontSize: 20.0)),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Image.asset(widget.entry.image, fit: BoxFit.cover),
          SizedBox(
            height: 10.0,
          ),
          Text(widget.entry.description),
        ],
      ),
    );
  }
}
