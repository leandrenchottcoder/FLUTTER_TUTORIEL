import 'package:flutter/material.dart';
import 'package:tutoriel_flutter/buttons.dart';
import 'package:tutoriel_flutter/cosmetic.dart';
import 'selectioncosmetic.dart';
import 'package:tutoriel_flutter/newcollection.dart';

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

class _myAppState extends State<myApp> with SingleTickerProviderStateMixin {
  int selectpage = 0;
  int info = 10;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(
      initialPage: 0,
      keepPage: true,
      viewportFraction: 0.8,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Row(
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    color: Color(0XFFf1d9cf),
                    child: Column(
                      children: [
                        buttonicon(Icons.search),
                        Padding(
                          padding: EdgeInsets.only(left: 4),
                          child: Row(
                            children: [
                              buttonicon(Icons.brush),
                              Container(
                                height: 30.0,
                                width: 4.0,
                                color: Color(0XFFAD4D39),
                              ),
                            ],
                          ),
                        ),
                        buttonicon(Icons.scatter_plot),
                        buttonicon(Icons.shopping_basket),
                        SizedBox(
                          height: 75.0,
                        ),
                        buttonicon(Icons.home),
                      ],
                    ),
                  ),
                  // child: Placeholder(
                  //   color: Colors.blue,
                  // ),
                ),
                Flexible(
                  flex: 5,
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: Column(
                      children: [
                        Flexible(
                          flex: 6,
                          child: Container(
                            color: Color(0XFFcf8989),
                            height: 300.0,
                            width: double.infinity,
                            child: PageView.builder(
                              itemCount: cosmetic.length,
                              itemBuilder: (BuildContext context, int index) {
                                return selectioncosmetic(index);
                              },
                              controller: pageController,
                              onPageChanged: (int index) {
                                setState(() {
                                  info = index;
                                  selectpage = info;
                                });
                              },
                            ),
                          ),
                          // child: Placeholder(
                          //   color: Colors.black,
                          // ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            width: double.infinity,
                            height: 35,
                            child: Center(
                              child: Text(cosmetic[info].name,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          ),
                          // child: Placeholder(
                          //   color: Colors.red,
                          // ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 15.0,
                              right: 15.0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    buttonupdown(Icons.add),
                                    Text("1",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    buttonupdown(Icons.remove),
                                  ],
                                ),
                                Text(" \$${cosmetic[info].price}",
                                    style: TextStyle(
                                      color: Color(0XFFAD4D39),
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    )),
                              ],
                            ),
                          ),
                          // child: Placeholder(
                          //   color: Colors.blue,
                          // ),
                        ),
                        Flexible(
                          flex: 2,
                          child: Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Card(
                              elevation: 10.0,
                              color: Colors.black,
                              child: Center(
                                child: Text(
                                  "The overflow property's behavior is affected by the [softWrap] argument. If the [softWrap] is true or null, the glyph causing overflow, and those that follow, will not be rendered. Otherwise, it will be shown with the given overflow option.",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12.0),
                                ),
                              ),
                            ),
                          ),
                          // child: Placeholder(
                          //   color: Colors.yellow,
                          // ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child: Container(
                              width: 250.0,
                              decoration: ShapeDecoration(
                                color: Color(0XFFAD4D39).withOpacity(0.4),
                                shape: StadiumBorder(),
                              ),
                              child: Center(
                                  child: Text("Add to Basket",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15))),
                            ),
                          ),
                          // child: Placeholder(
                          //   color: Colors.purple,
                          // ),
                        ),
                      ],
                    ),
                  ),
                  // child: Placeholder(
                  //   color: Colors.green,
                  // ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 60.0, top: 150.0),
              child: DraggableScrollableSheet(
                initialChildSize: 0.1,
                minChildSize: 0.1,
                maxChildSize: 0.9,
                builder:
                    (BuildContext context, ScrollController scrollController) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                      ),
                      color: Colors.black,
                    ),
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemCount: cosmetics.length,
                      controller: scrollController,
                      itemBuilder: (BuildContext context, int index) {
                        return newcollection(index);
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
