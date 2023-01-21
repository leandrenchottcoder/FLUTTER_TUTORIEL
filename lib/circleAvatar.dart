import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: myApp(),
  ));
}

class myApp extends StatefulWidget {
  const myApp({super.key});

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  Widget movies(String name, String image, String movie) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
          backgroundImage: AssetImage(image),
          radius: 30.0,
          child: Text(image.length == 0 ? name[0].toUpperCase() : "",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0)),
        ),
        title: Text(name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0)),
        subtitle: Text(movie,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CircleAvatar"),
      ),
      body: ListView(
        children: [
          movies("Leandre N'chott", '../images/br1.jpg', "Brabus"),
          Divider(
            height: 10.0,
            color: Colors.black,
          ),
          movies("Jean Yves", '../images/r2.jpg', "Roll Royce"),
          Divider(
            height: 10.0,
            color: Colors.black,
          ),
          movies("Marc Aurel", '../images/m6.jpg', "Brabus 2"),
          Divider(
            height: 10.0,
            color: Colors.black,
          ),
          movies("N'kpati Akossiwa", '../images/b2.jpg', "BMW"),
          Divider(
            height: 10.0,
            color: Colors.black,
          ),
          movies("N'kpati Akossiwa", '../images/p1.jpg', "Peugeot"),
          Divider(
            height: 10.0,
            color: Colors.black,
          ),
          movies("Hamed Syllla", '../images/m17.jpg', "Mercedes"),
          Divider(
            height: 10.0,
            color: Colors.black,
          ),
          movies("Bamba Ali", '../images/m18.jpg', "Mercedes"),
          Divider(
            height: 10.0,
            color: Colors.black,
          ),
          movies("Bamogo Ismo", '../images/p2.jpg', "Peugeot 2"),
          Divider(
            height: 10.0,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
