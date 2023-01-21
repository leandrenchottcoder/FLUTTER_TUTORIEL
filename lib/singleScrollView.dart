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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(tabs: <Widget>[
              Tab(
                child: Icon(Icons.filter_vintage,
                    color: Color(0xff622F74), size: 40),
              ),
              Tab(
                child: Icon(Icons.phonelink_ring,
                    color: Color(0xff622F74), size: 40),
              ),
            ]),
            title: Text("SingleChildScrollView"),
          ),
          body: TabBarView(
            children: [
              SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Container(
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset('../images/br1.jpg',
                                    height: 300, width: 300),
                              ),
                              SizedBox(width: 70),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset('../images/br2.jpg',
                                    height: 300, width: 300),
                              ),
                              SizedBox(width: 70),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset('../images/br3.jpg',
                                    height: 300, width: 300),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Container(
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset('../images/br1.jpg',
                                    height: 300, width: 300),
                              ),
                              SizedBox(width: 70),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset('../images/br2.jpg',
                                    height: 300, width: 300),
                              ),
                              SizedBox(width: 70),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset('../images/br3.jpg',
                                    height: 300, width: 300),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Container(
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset('../images/br1.jpg',
                                    height: 300, width: 300),
                              ),
                              SizedBox(width: 70),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset('../images/br2.jpg',
                                    height: 300, width: 300),
                              ),
                              SizedBox(width: 70),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset('../images/br1.jpg',
                                    height: 300, width: 300),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Container(
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset('../images/br1.jpg',
                                    height: 300, width: 300),
                              ),
                              SizedBox(width: 70),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset('../images/br2.jpg',
                                    height: 300, width: 300),
                              ),
                              SizedBox(width: 70),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset('../images/br1.jpg',
                                    height: 300, width: 300),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
