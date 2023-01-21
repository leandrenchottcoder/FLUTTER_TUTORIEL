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
          child: Container(
            child: ListView(
              children: [
                Text("BRABUS 1"),
                Divider(
                  height: 10.0,
                ),
                Image.asset('../images/br1.jpg', fit: BoxFit.cover),
                SizedBox(
                  height: 10.0,
                ),
                ElevatedButton.icon(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => SeconPage()));
                    },
                    icon: Icon(Icons.details),
                    label: Text("Detail")),
                SizedBox(
                  height: 10.0,
                ),
                Text("BRABUS 2"),
                Divider(
                  height: 10.0,
                ),
                Image.asset('../images/br2.jpg', fit: BoxFit.cover),
                SizedBox(
                  height: 10.0,
                ),
                ElevatedButton.icon(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => thirdPage()));
                    },
                    icon: Icon(Icons.details),
                    label: Text("Detail"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//=================================== page 2 ====================================================================
class SeconPage extends StatelessWidget {
  const SeconPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: Text("Page 2"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Container(
            child: Column(
              children: [
                Text("BRABUS 1"),
                Divider(
                  height: 10.0,
                ),
                Image.asset('../images/br1.jpg', fit: BoxFit.cover),
                Text(
                    "Brabus est la voiture la plus chère de l'histoire. Acheter là et vous verrez ces capacités. Nous vous proposons un très bon moteur "),
                SizedBox(
                  height: 20.0,
                ),
                ElevatedButton.icon(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.add_to_home_screen),
                    label: Text("Retour")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//============================================ Page 3 ========================================================
class thirdPage extends StatelessWidget {
  const thirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text("Page 3"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Container(
            child: Column(
              children: [
                Text("BRABUS 2"),
                Divider(
                  height: 10.0,
                ),
                Image.asset('../images/br2.jpg', fit: BoxFit.cover),
                Text(
                    "Brabus est la voiture la plus chère de l'histoire. Acheter là et vous verrez ces capacités. Nous vous proposons un très bon moteur "),
                SizedBox(
                  height: 20.0,
                ),
                ElevatedButton.icon(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.add_to_home_screen),
                    label: Text("Detail")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
