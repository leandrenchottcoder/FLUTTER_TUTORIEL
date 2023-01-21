import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'button_dowload.dart';
import 'progress_bar.dart';

main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: myApp(),
    ),
  );
}

double ballance = 145.0;
double prix1 = 10.0;

class myApp extends StatefulWidget {
  const myApp({super.key});

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> with SingleTickerProviderStateMixin {
  AnimationController? progessAnimationController;
  double? percent;
  late double nexPercent;
  late bool progressDone;
  bool validation1 = false;
  late Timer timer;

  initState() {
    super.initState();
    percent = 0.0;
    nexPercent = 0.0;
    progressDone = false;
    initAnimationController();
    Timer.periodic(Duration(milliseconds: 1), (Timer timer) {
      setState(() {
        ballance = ballance;
      });
    });
    const timer = null;
  }

  initAnimationController() {
    progessAnimationController = AnimationController(
      vsync: this,
      duration: Duration(
        microseconds: 1000,
      ),
    )..addListener(() {
        percent =
            lerpDouble(percent, nexPercent, progessAnimationController!.value);
      });
  }

  handleTicker(Timer timer) {
    timer = timer;
    if (nexPercent < 100) {
      publishProgress();
    } else {
      timer.cancel();
      setState(() {
        progressDone = true;
      });
    }
  }

  publishProgress() {
    setState(() {
      percent = nexPercent;
      nexPercent += 0.5;
      if (nexPercent > 100) {
        percent = 0.0;
      }
      progessAnimationController?.forward(from: 0.0);
    });
  }

  start() {
    Timer.periodic(Duration(milliseconds: 30), handleTicker);
  }

  starProgress() {
    if (null != timer && timer.isActive) {
      timer.cancel();
    }
    setState(() {
      percent = 0.0;
      nexPercent = 0.0;
      progressDone = false;
      start();
    });
  }

  progressValidation() {
    return Text(
      "Succès",
      style: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.w700,
        color: Colors.green,
      ),
    );
  }

  progressView(bool a) {
    return (a == true)
        ? CustomPaint(
            child: Center(
              child: progressDone ? progressValidation() : progressText(),
              heightFactor: 100,
              widthFactor: 100,
            ),
            foregroundPainter: ProgressPaint(
              colorCircle: Color(0XFF809e00),
              completedPercentCircle: Color(0XFF1d3b2a),
              completedPercent: percent!,
              circleSize: 10.0,
            ),
          )
        : null;
  }

  Widget bodycentertop(String a, Widget b) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(a,
                  fit: BoxFit.cover, height: 200.0, width: 180.0),
            ),
            SizedBox(
              width: 10.0,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 250.0,
                width: 220,
                padding: EdgeInsets.all(20.0),
                child: b,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget bodycentermiddle(String a, String b) {
    return Column(
      children: [
        Row(
          children: [
            InkWell(
              onTap: () {},
              child: Icon(
                Icons.pause_circle_filled,
                color: Color(0XFF1d3b2a),
                size: 40.0,
              ),
            ),
            InkWell(
              onTap: () {},
              child: Icon(
                Icons.pause_circle_filled,
                color: Color(0XFF1d3b2a),
                size: 40.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Text(a,
                  style: TextStyle(
                      color: Color(0XFF1d3b2a),
                      fontStyle: FontStyle.italic,
                      fontSize: 30.0)),
            ),
            Container(
              width: 50.0,
              height: 40.0,
              decoration: ShapeDecoration(
                color: Color(0XFF1d3b2a),
                shape: StadiumBorder(),
              ),
              child: Center(
                child: Center(
                  child: Text("\$$b",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 15.0,
                      )),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  progressText() {
    return Text(
      nexPercent == 0 ? '' : '${nexPercent.toInt()}' + '%',
      style: TextStyle(
          fontSize: 40.0, fontWeight: FontWeight.w700, color: Colors.green),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Flexible(
                flex: 4,
                child: Stack(
                  children: [
                    ClipPath(
                      clipper: Clippertest2(),
                      child: Container(
                        width: double.infinity,
                        height: 250,
                        color: Color(0XFF809e00),
                      ),
                    ),
                    ClipPath(
                      clipper: Clippertest1(),
                      child: Container(
                        width: double.infinity,
                        height: 190,
                        color: Color(0XFF1d3b2a),
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: ListView(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 30.0),
                                child: Center(
                                  child: Text(
                                    "MUSIC & CLIP VIDEO",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 110, width: double.infinity),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 190, left: 30),
                      child: Container(
                        width: 250.0,
                        decoration: BoxDecoration(
                          border:
                              Border.all(width: 3, color: Color(0XFF1d3b2a)),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.search,
                                color: Color(0XFF1d3b2a), size: 25.0),
                            Text(
                              "Charlotte cardin",
                              style: TextStyle(color: Color(0XFF1d3b2a)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 190, left: 300),
                      child: Container(
                        width: 100,
                        height: 150,
                        decoration: ShapeDecoration(
                          color: Color(0XFF809e00),
                          shape: StadiumBorder(),
                        ),
                        child: Center(
                          child: Text("Mes favoris",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 10)),
                        ),
                      ),
                    ),
                  ],
                ),
                // child: Placeholder(
                //   color: Colors.blue,
                // ),
              ),
              Flexible(
                flex: 7,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          bodycentertop(
                              '../images/br1;jpg', progressView(validation1)),
                          bodycentermiddle('sard girl', '{$prix1}'),
                          Row(
                            children: [
                              buttondownload("Telecharger", () {
                                validation1 = true;
                                if (validation1 == true) {
                                  starProgress();
                                  ballance = ballance - prix1;
                                }
                              }),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // child: Placeholder(
                //   color: Colors.black,
                // ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  color: Color(0XFF1d3b2a),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFF809e00),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(70),
                        bottomRight: Radius.circular(70),
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20.0, top: 20.0),
                            child: Column(
                              children: [
                                Text(
                                  "Votre balance Actuelle",
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      fontSize: 20.0),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.only(right: 25.0),
                            child: Container(
                              width: 10.0,
                              height: 40.0,
                              decoration: ShapeDecoration(
                                color: Color(0XFF1d3b2a),
                                shape: StadiumBorder(),
                              ),
                              child: Center(
                                child: Text(
                                  "\$$ballance",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 15.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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

class Clippertest1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 4, size.height, size.width / 2, size.height - 55);
    path.quadraticBezierTo(size.width - (size.width / 4), size.height - 10,
        size.width, size.height - 72);
    path.lineTo(size.width, 0);
    path.close();
    return path;
    // TODO: implement getClip
    throw UnimplementedError();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}

class Clippertest2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 20);
    path.quadraticBezierTo(
        size.width / 4, size.height / 2, size.width / 2, size.height - 48);
    path.quadraticBezierTo(size.width - (size.width / 4), size.height,
        size.width, size.height - 100);
    path.lineTo(size.width, 0);
    path.close();
    return path;
    // TODO: implement getClip
    throw UnimplementedError();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}
