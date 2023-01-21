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
  double val = 10.0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    val = 5.0;
  }

  Widget cars(String image, Curve animation) {
    return AnimatedPadding(
      padding: EdgeInsets.all(val),
      duration: Duration(seconds: 1),
      curve: animation,
      child: Container(
        height: 150.0,
        width: 350.0,
        decoration: BoxDecoration(
          color: Color(0xff0d2c47),
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          image: DecorationImage(image: AssetImage(image)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedPadding (implicites)"),
      ),
      backgroundColor: Colors.teal,
      body: Column(
        children: [
          Stack(
            children: [
              Stack(
                children: [
                  Container(
                    height: 200.0,
                    width: MediaQuery.of(context).size.width,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40.0),
                        bottomRight: Radius.circular(40.0),
                      ),
                      child:
                          Image.asset('../images/br1.jpg', fit: BoxFit.cover),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.add_shopping_cart, size: 40.0),
                      ],
                    ),
                  ),
                  Positioned(
                    height: 15.0,
                    width: 15.0,
                    right: 12,
                    top: 47,
                    child: FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          if (val > 5) {
                            val -= 5;
                          }
                        });
                      },
                      backgroundColor: Colors.red,
                      child: Text("2",
                          style:
                              TextStyle(color: Colors.white, fontSize: 14.0)),
                    ),
                  ),
                  Positioned(
                    bottom: 5,
                    right: 3,
                    child: Row(
                      children: [
                        FloatingActionButton(
                          onPressed: () {
                            val = val + 5;
                          },
                          backgroundColor: Color(0xff125384),
                          child: Icon(Icons.remove),
                        ),
                        FloatingActionButton(
                          onPressed: () {},
                          backgroundColor: Color(0xff125384),
                          child: Icon(Icons.add),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: 380,
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 200.0,
                      ),
                      cars('../images/br1.jpg', Curves.easeInExpo),
                      cars('../images/br1.jpg', Curves.easeInExpo),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
