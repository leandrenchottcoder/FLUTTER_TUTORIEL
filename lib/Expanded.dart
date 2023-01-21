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
        title: Text("Expanded Widget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('../images/br1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              child: Text("La nature nous offre des choses",
                  style:
                      TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Icon(Icons.stars, color: Colors.orange, size: 25.0),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Icon(Icons.stars, color: Colors.green, size: 25.0),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Icon(Icons.stars, color: Colors.black, size: 25.0),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Icon(Icons.stars, color: Colors.teal, size: 25.0),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(2.0),
              width: MediaQuery.of(context).size.width,
              child: Text(
                  "Je suis leandre n'chott Je suis leandre n'chott Je suis leandre n'chott Je suis leandre n'chott Je suis leandre n'chott",
                  style: TextStyle(fontSize: 25.0)),
            ),
          ],
        ),
      ),
    );
  }
}
