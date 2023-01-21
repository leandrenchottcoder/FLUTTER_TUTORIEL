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
        title: Text("Positioned"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 350.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('../images/br1.jpg'),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            // ======================================== deuxième container ==================================================
            Container(
              padding: EdgeInsets.only(left: 25, right: 25.0),
              child: Container(
                child: Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 200.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('../images/br2.jpg'),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 5,
                      width: 60,
                      child: Container(
                        height: 23.0,
                        width: 20.0,
                        color: Colors.blue,
                        child: Text("2022",
                            style: TextStyle(
                                fontSize: 25.0, fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // ===================================troisème container =================================
            SizedBox(
              height: 10.0,
            ),
            Container(
              padding: EdgeInsets.only(left: 25, right: 25.0),
              child: Container(
                child: Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 200.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('../images/br3.jpg'),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 5,
                      width: 60,
                      child: Container(
                        height: 23.0,
                        width: 20.0,
                        color: Colors.orange,
                        child: Text("2021",
                            style: TextStyle(
                                fontSize: 25.0, fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // ================================ Quatrième Container ===========================================
            SizedBox(
              height: 10.0,
            ),
            Container(
              padding: EdgeInsets.only(left: 25, right: 25.0),
              child: Container(
                child: Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 200.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('../images/br1.jpg'),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 5,
                      width: 60,
                      child: Container(
                        height: 23.0,
                        width: 20.0,
                        color: Colors.teal,
                        child: Text("2020",
                            style: TextStyle(
                                fontSize: 25.0, fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
