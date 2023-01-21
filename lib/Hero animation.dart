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
  late List<Container> movieOscar = [];
  var poster = [
    {"name": "Brabus 1", "photo": "../images/br1.jpg"},
    {"name": "Brabus 2", "photo": "../images/br2.jpg"},
    {"name": "Brabus 3", "photo": "../images/br3.jpg"},
    {"name": "ROll Royce", "photo": "../images/r1.jpg"},
    {"name": "Maserati", "photo": "../images/ma1.jpg"},
    {"name": "Mercedez GLE", "photo": "../images/m3.jpg"},
    {"name": "Maserati", "photo": "../images/m3.jpg"},
    {"name": "Roll Royce", "photo": "../images/r3.jpg"},
    {"name": "Mercedez GLE", "photo": "../images/m11.jpeg"},
    {"name": "Roll Royce", "photo": "../images/r2.jpg"},
    {"name": "Roll Royce", "photo": "../images/r4.jpg"},
    {"name": "BMW", "photo": "../images/b2.jpg"},
    {"name": "Peugeot 3008", "photo": "../images/p1.jpg"},
    {"name": "Peugeot 3008", "photo": "../images/p2.jpg"},
    {"name": "Mercedez", "photo": "../images/m13.jpg"},
    {"name": "BMW", "photo": "../images/b3.jpg"},
  ];
  buildList() async {
    for (var i = 0; i < poster.length; i++) {
      final gleinfo = poster[i];
      final String? imageposter = gleinfo["photo"];
      int pourcent = 85 + i;
      movieOscar.add(
        Container(
          padding: EdgeInsets.all(15.0),
          child: Card(
            elevation: 5.0,
            child: Column(
              children: [
                Container(
                  child: Hero(
                    tag: "${gleinfo["name"]}",
                    child: Material(
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => showdetails(
                                    namedetail: "${gleinfo["name"]}",
                                    posterdetail: "${imageposter}",
                                    pcent: pourcent,
                                  )));
                        },
                        child: Container(
                          height: 127.0,
                          width: 250.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                                image: AssetImage('../images/${imageposter}')),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Text("${gleinfo["name"]}",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0)),
              ],
            ),
          ),
        ),
      );
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    buildList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero Animation"),
      ),
      body: Container(
        child: GridView.count(
          crossAxisCount: 2,
          children: movieOscar,
        ),
      ),
    );
  }
}

class showdetails extends StatelessWidget {
  final String namedetail, posterdetail;
  final int pcent;
  const showdetails(
      {super.key,
      required this.namedetail,
      required this.posterdetail,
      required this.pcent});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.movie_creation))
        ],
        title: Text("${namedetail}",
            style: TextStyle(fontSize: 18.0, color: Colors.white)),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          Container(
            height: 565.0,
            width: 200.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                  image: AssetImage('../images/${posterdetail}')),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.play_circle_fill,
                              color: Colors.red, size: 25.0),
                          SizedBox(
                            width: 20.0,
                          ),
                          Text("Play Trialer",
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("${pcent}% Liked this cars",
                              style: TextStyle(
                                  fontSize: 18.0, fontWeight: FontWeight.bold)),
                          SizedBox(width: 50.0),
                          Icon(
                            Icons.thumb_up,
                            color: Colors.blueAccent,
                            size: 25.0,
                          ),
                          SizedBox(width: 10.0),
                          Icon(
                            Icons.thumb_down,
                            color: Colors.blueAccent,
                            size: 25.0,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5.0),
                  child: Column(
                    children: [
                      Text(
                          "A look three defining chapiters in the life of chifon",
                          style: TextStyle(fontSize: 20.0)),
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
