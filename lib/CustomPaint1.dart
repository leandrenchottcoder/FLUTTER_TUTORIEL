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
        title: Text("Custom Paint - Partie 1"),
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.close, color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.airplanemode_active, color: Colors.black),
          ),
        ],
      ),
      backgroundColor: Colors.blueAccent,
      body: SingleChildScrollView(
        child: CustomPaint(
          painter: Drawer(),
          child: Container(
            height: 600,
            width: 580,
          ),
        ),
      ),
    );
  }
}

class Drawer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint

    final paint = Paint();
    paint.color = Colors.yellowAccent;
    var a = Offset(size.width / 1.2, size.height / 8);
    canvas.drawCircle(a, 60, paint);

    //=================================================================
    var b = Rect.fromLTWH(
      size.width / 8,
      size.height / 2,
      310,
      250,
    );
    paint.color = Colors.red;
    canvas.drawRect(b, paint);

    //==================================================================
    paint.color = Colors.orange;
    paint.strokeWidth = 15;
    var m1 = Offset(0, 350);
    var m2 = Offset(200, 0);
    canvas.drawLine(
      m1,
      m2,
      paint,
    );
    //=====================================================================
    paint.color = Colors.white;
    var m3 = Offset(size.width, 350);
    var m4 = Offset(200, 0);
    canvas.drawLine(
      m3,
      m4,
      paint,
    );
    //=====================================================================
    paint.color = Colors.green;
    var m5 = Offset(0, 275);
    var m6 = Offset(700, 275);
    canvas.drawLine(
      m5,
      m6,
      paint,
    );
    //=====================================================================
    paint.color = Colors.black;
    var m7 = Offset(0, 300);
    var m8 = Offset(700, 300);
    canvas.drawLine(
      m7,
      m8,
      paint,
    );
    //=========================================================================
    var v = Rect.fromLTWH(size.width / 2.3, size.height / 1.3, 80, 90);
    paint.color = Colors.black;
    canvas.drawRect(v, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    // throw UnimplementedError();
    return false;
  }
}
