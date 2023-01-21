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
        title: Text("ClipPath"),
      ),
      body: Stack(
        children: [
          Container(
            child: ClipPath(
              clipper: ClipperModule3(),
              child: Container(
                width: double.infinity,
                height: 520,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('../images/r1.jpg'),
                  ),
                ),
              ),
            ),
          ),
          ClipPath(
            clipper: ClipperModule2(),
            child: Container(
              width: double.infinity,
              height: 300.0,
              color: Color(0xff35508A),
            ),
          ),
          ClipPath(
            clipper: ClipperModule1(),
            child: Container(
              width: double.infinity,
              height: 200.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  colorFilter: ColorFilter.mode(Colors.blue, BlendMode.color),
                  image: AssetImage('../images/p1.jpg'),
                ),
              ),
              child: Center(
                  child: Text("Brabus",
                      style: TextStyle(
                        fontSize: 40.0,
                        color: Colors.white,
                      ))),
            ),
          ),
        ],
      ),
    );
  }
}

class ClipperModule1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 50);
    path.lineTo(size.width / 2, size.height - 50);
    path.lineTo(size.width, size.height - 50);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class ClipperModule2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 35);
    path.lineTo(size.height / 4, size.height);
    path.lineTo(size.height / 2, size.height - 35);
    path.lineTo(size.width - (size.width / 4), size.height - 35);
    path.lineTo(size.width, size.height - 35);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class ClipperModule3 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 50);
    path.lineTo(size.width, size.height - 200);

    path.lineTo(size.width, 0);
    path.close();
    return path;

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
