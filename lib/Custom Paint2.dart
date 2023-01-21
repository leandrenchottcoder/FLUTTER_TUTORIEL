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
  static Offset post = Offset(0, 0);
  List<Offset> listPost = <Offset>[];
  static Color color = Colors.yellow;
  List<Color> listColor = <Color>[color];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Paint - Partie 2"),
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.close, color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.airplanemode_active, color: Colors.white),
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onPanUpdate: (DragUpdateDetails details) {
              RenderObject? box = context.findRenderObject();
              // post = box!.globalToLocal(details.localPosition);
              listPost = List.from(listPost)..add(post);
              listColor = List.from(listColor)..add(color);
            },
            onPanEnd: (DragEndDetails details) {
              setState(() {
                listPost.add(null!);
              });
            },
            child: Container(
              color: Colors.black,
              width: MediaQuery.of(context).size.width,
              height: 533.4,
              child: CustomPaint(
                painter: Drawer(listPost: listPost, listColor: listColor),
                child: Container(),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 70.0,
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(Icons.edit, color: Colors.yellow),
                  onPressed: () {
                    setState(() {
                      color:
                      Colors.yellow;
                    });
                  },
                ),
                IconButton(
                  icon: Icon(Icons.edit, color: Colors.red),
                  onPressed: () {
                    setState(() {
                      Colors.red;
                    });
                  },
                ),
                IconButton(
                  icon: Icon(Icons.edit, color: Colors.orange),
                  onPressed: () {
                    setState(() {
                      Colors.orange;
                    });
                  },
                ),
                IconButton(
                  icon: Icon(Icons.refresh, color: Colors.white),
                  onPressed: () {
                    setState(() {
                      post = Offset(0, 0);
                      listPost = <Offset>[];
                      color = Colors.yellow;
                      listColor = <Color>[color];
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Drawer extends CustomPainter {
  late List<Offset> listPost;
  late List<Color> listColor;
  Drawer({required this.listPost, required this.listColor});
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.black;
    paint.isAntiAlias = true;
    paint.strokeWidth = 3.0;
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
    // TODO: implement shouldRepaint
    // throw UnimplementedError();
  }
}
