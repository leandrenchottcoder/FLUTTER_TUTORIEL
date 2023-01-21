import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'bezier.dart';
import 'List_menu/category.dart';
import 'List_menu/beaufort.dart';
import 'List_menu/wisky.dart';
import 'List_menu/codys.dart';
import 'List_menu/liqueur.dart';
import 'List_menu/vody.dart';
import 'List_menu/sangria.dart';
import 'List_menu/dopel.dart';

main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: myApp(),
    ),
  );
}

double total = 0.0;
int count = 0;

class myApp extends StatefulWidget {
  const myApp({super.key});

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  var menu = [
    {
      "name": "Sangria",
      "image": "../images/champ1.png",
    },
    {
      "name": "Beaufort",
      "image": "../images/champ1.png",
    },
    {
      "name": "Dopel",
      "image": "../images/champ1.png",
    },
    {
      "name": "Vody",
      "image": "../images/champ1.png",
    },
    {
      "name": "Cody's",
      "image": "../images/champ1.png",
    },
    {
      "name": "Liqueur",
      "image": "../images/champ1.png",
    },
    {
      "name": "Wisky",
      "image": "../images/champ1.png",
    },
  ];
  List<Category> app = sangria;
  move(int a) {
    switch (a) {
      case 1:
        app = sangria;
        break;
      case 2:
        app = beaufort;
        break;
      case 3:
        app = dopel;
        break;
      case 4:
        app = vody;
        break;
      case 5:
        app = codys;
        break;
      case 6:
        app = liqueur;
        break;
      case 7:
        app = wisky;
        break;
      default:
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(
        Duration(
          milliseconds: 1,
        ), (Timer timer) {
      setState(() {
        total = total;
        count = count;
      });
    });
  }

  Widget button(String text, Function onTap) {
    return Material(
      borderRadius: BorderRadius.circular(25.0),
      color: Color(0XFFb30000),
      elevation: 4.0,
      shadowColor: Colors.white,
      child: InkWell(
        onTap: onTap(),
        splashColor: Colors.black,
        child: Container(
          child: Center(
            child: Text(
              "" + text + "",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.justify,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFb30000),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Flexible(
                flex: 5,
                fit: FlexFit.tight,
                child: ClipPath(
                  clipper: clippertest(),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('../images/gateau.JPG'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                // child: Placeholder(
                //   color: Colors.black,
                // ),
              ),
              Flexible(
                flex: 3,
                child: Container(
                  height: double.infinity,
                  child: ListView.builder(
                      itemCount: menu.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, index) => InkWell(
                            onTap: () {
                              setState(() {
                                if (index == 0) {
                                  move(1);
                                }
                                if (index == 1) {
                                  move(2);
                                }
                                if (index == 2) {
                                  move(3);
                                }
                                if (index == 3) {
                                  move(4);
                                }
                                if (index == 4) {
                                  move(5);
                                }
                                if (index == 5) {
                                  move(6);
                                }
                                if (index == 6) {
                                  move(7);
                                }
                              });
                            },
                            child: Container(
                              width: 175,
                              margin: EdgeInsets.symmetric(horizontal: 25.0),
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  image: DecorationImage(
                                    image:
                                        AssetImage('${menu[index]['image']}'),
                                  ),
                                  borderRadius: BorderRadius.circular(25)),
                              child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        '${menu[index]['name']}',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )),
                ),
              ),
              // child: Placeholder(
              //   color: Colors.yellow,
              // ),),
              Flexible(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Text(
                        "Glissez votre choix dans le panier",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    GlissezDeplacerTarget(),
                    // Icon(Icons.shopping_basket,
                    //     size: 40.0, color: Colors.white),
                  ],
                ),
                // child: Placeholder(
                //   color: Colors.green,
                // ),
              ),
              Flexible(
                flex: 6,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: app.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Showinfo(menuinfo: app[index]);
                    },
                  ),
                ),
                // child: Placeholder(
                //   color: Colors.blue,
                // ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(70.0),
                      topRight: Radius.circular(70.0),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 20.0),
                        child: button('Valider panier', () {
                          debugPrint('Validation');
                        }),
                      ),
                      Text(
                        '\$${total}',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                // child: Placeholder(
                //   color: Colors.red,
                // ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Showinfo extends StatelessWidget {
  final Category menuinfo;
  const Showinfo({super.key, required this.menuinfo});

  @override
  Widget build(BuildContext context) {
    return Draggable(
      data: menuinfo,
      maxSimultaneousDrags: 1,
      child: GlissezDeplacer(menuinfo: menuinfo),
      feedback: GlissezDeplacerFeeback(
        menuinfo: menuinfo,
      ),
    );
  }
}

class GlissezDeplacer extends StatelessWidget {
  const GlissezDeplacer({
    Key? key,
    required this.menuinfo,
  }) : super(key: key);

  final Category menuinfo;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 4,
        child: ListTile(
          leading: Container(
            height: 150,
            width: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                  image: AssetImage(menuinfo.image), fit: BoxFit.cover),
            ),
          ),
          trailing: Text(
            '\$' + menuinfo.price.toString(),
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            menuinfo.name,
            style: TextStyle(fontSize: 15.0, color: Colors.black),
          ),
        ),
        margin: EdgeInsets.only(bottom: 15.0),
      ),
    );
  }
}

class GlissezDeplacerFeeback extends StatelessWidget {
  const GlissezDeplacerFeeback({
    Key? key,
    required this.menuinfo,
  }) : super(key: key);

  final Category menuinfo;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.7,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 60.0,
            width: 90.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: AssetImage(menuinfo.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            menuinfo.name,
            style: TextStyle(fontSize: 15.0, color: Colors.black),
          ),
          Text(
            '\$' + menuinfo.price.toString(),
            style: TextStyle(fontSize: 15.0, color: Colors.black),
          ),
        ],
      ),
    );
  }
}

class GlissezDeplacerTarget extends StatefulWidget {
  const GlissezDeplacerTarget({super.key});

  @override
  State<GlissezDeplacerTarget> createState() => _GlissezDeplacerTargetState();
}

class _GlissezDeplacerTargetState extends State<GlissezDeplacerTarget> {
  @override
  Widget build(BuildContext context) {
    return DragTarget<Category>(
      builder: (BuildContext context, candidate, rejects) {
        return Stack(
          children: [
            Icon(Icons.shopping_basket, size: 40.0, color: Colors.white),
            Padding(
              padding: EdgeInsets.only(
                top: 16,
                left: 10.0,
              ),
              child: Container(
                height: 20.0,
                width: 20.0,
                child: FloatingActionButton(
                  elevation: 5,
                  backgroundColor: Color(0XFFb30000),
                  child: Text("${count}",
                      style: TextStyle(color: Colors.white, fontSize: 14.0)),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        );
      },
      onWillAccept: (Category? menuinfo) {
        return true;
      },
      onAccept: (Category menuinfo) {
        total = total + menuinfo.price;
        count++;
      },
    );
  }
}
