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
  static List<String> wine = [
    '../images/champ1.png',
    '../images/champ2.jpg',
    '../images/champ3.jpg',
    '../images/champ1.png',
    '../images/champ1.png'
  ];
  static List<String> winenamelist = [
    'Chateau Lafite',
    'Leroy Chambery',
    'Romanee Grand Cru',
    'Cabernet Sauvignon',
    'Sangria'
  ];
  static List<String> winepricelist = [
    '5000\$',
    '2500\$',
    '8000\$',
    '3000\$',
    '6000\$'
  ];
  Widget image =
      Image.asset('${wine[0]}', width: 200.0, height: 300.0, key: Key(wine[0]));
  String winename = 'Chateau Lafite';
  String pricename = '5000\$';
  int i = 0;
  suivant() {
    if (i < wine.length - 1) {
      i++;
      setState(() {
        image = Image.asset(
          '${wine[i]}',
          width: 200.0,
          height: 300.0,
          key: Key(wine[i]),
        );
        winename = winenamelist[i].toString();
        pricename = winepricelist[i].toString();
      });
    }
  }

  precedent() {
    if (i > 0) {
      i--;
      setState(() {
        image = Image.asset(
          '${wine[i]}',
          width: 200.0,
          height: 300.0,
          key: Key(wine[i]),
        );
        winename = winenamelist[i].toString();
        pricename = winepricelist[i].toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedSwitcher"),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 10,
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 30, left: 10.0, right: 10.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 200.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50.0),
                          topRight: Radius.circular(50.0),
                          topLeft: Radius.circular(50.0),
                        ),
                        child: Container(
                          color: Color(0xff680406),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 8.0,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.keyboard_arrow_left,
                                        size: 25, color: Colors.white),
                                    Text("Vin de luxe",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15.0,
                                        )),
                                    Icon(Icons.search,
                                        size: 25, color: Colors.white),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Column(
                                children: [
                                  Text("Région: Lagune, COTE D'IVOIRE",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12.0,
                                      )),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Text(winename,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.0,
                                      )),
                                ],
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.star, color: Colors.yellow),
                                  Icon(Icons.star, color: Colors.yellow),
                                  Icon(Icons.star, color: Colors.yellow),
                                  Icon(Icons.star, color: Colors.yellow),
                                  Icon(Icons.star, color: Colors.yellow),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Stack(
                      children: [
                        Container(
                          // color: Colors.yellow,
                          width: 350,
                          height: 400.0,
                          child: Column(
                            children: [
                              Container(
                                // color: Colors.green,
                                width: 275.0,
                                height: 400.0,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: 270.0,
                                    left: 100.0,
                                  ),
                                  child: Column(
                                    children: [
                                      Text(pricename,
                                          style: TextStyle(
                                              color: Color(0xff680406),
                                              fontSize: 20.0)),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text("Alcool : 12.65%",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12.0)),
                                          Text("300ml",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12.0)),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 15.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            MaterialButton(
                                              onPressed: () {
                                                precedent();
                                              },
                                              child: Container(
                                                width: 25.0,
                                                height: 30.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xff680406),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                child: Icon(
                                                  Icons.keyboard_arrow_left,
                                                  color: Colors.white,
                                                  size: 25.0,
                                                ),
                                              ),
                                            ),
                                            InkWell(
                                              onTap: () {
                                                suivant();
                                              },
                                              child: Container(
                                                width: 25.0,
                                                height: 30.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xff680406),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                child: Icon(
                                                  Icons.keyboard_arrow_right,
                                                  color: Colors.white,
                                                  size: 25.0,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 70.0,
                          right: 180.0,
                          child: Container(
                            // color: Colors.red,
                            child: AnimatedSwitcher(
                              duration: Duration(seconds: 1),
                              transitionBuilder: (Widget assigned,
                                  Animation<double> animation) {
                                //==================première Animation =====================================
                                return ScaleTransition(
                                  scale: animation,
                                  child: assigned,
                                );
                                // ================= Deuxième Animation =================
                                // final posAni = Tween<Offset>(
                                //   begin: Offset(-1, 0),
                                //   end: Offset(0, 0),
                                // ).animate(animation);
                                // return SlideTransition(
                                //     position: posAni, child: assigned);
                              },
                              child: image,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 375.0, left: 20.0, right: 20.0),
                    child: Container(
                      // color: Colors.yellow,
                      width: 350.0,
                      child: Column(
                        children: [
                          Text("Description",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 20.0)),
                          Text(
                              "Creates a text widget.If the [style] argument is null, the text will use the style from the closest enclosing [DefaultTextStyle].The [data] parameter must not be null.The [overflow] property's behavior is affected by the [softWrap] argument. If the [softWrap] is true or null, the glyph causing overflow, and those that follow, will not be rendered. Otherwise, it will be shown with the given overflow option.",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 12.0)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xff680406),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(70.0),
                      topRight: Radius.circular(70.0),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.shopping_cart, color: Colors.white),
                          SizedBox(width: 20.0),
                          Text("Ajouter Au panier",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 17.0)),
                        ],
                      ),
                      Text("|",
                          style:
                              TextStyle(color: Colors.white, fontSize: 40.0)),
                      Text("CAISSE",
                          style:
                              TextStyle(color: Colors.white, fontSize: 25.0)),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
