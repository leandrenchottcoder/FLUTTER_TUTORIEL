import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tutoriel_flutter/secondscreen.dart';
import 'background.dart';
import 'transition.dart';
import 'package:tutoriel_flutter/secondscreen.dart';

main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        "secondscreen": (BuildContext context) => Secondscreen()
      },
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
  late AnimationController controler;
  late Animation<double> animation;
  starTimer() async {
    Duration duration = Duration(seconds: 10);
    return Timer(duration, navigatePage);
  }

  navigatePage() => Navigator.of(context).pushReplacementNamed('secondscreen');
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controler = AnimationController(
      duration: Duration(
        milliseconds: 5000,
      ),
      vsync: this,
    );
    animation = Tween(begin: 0.0, end: 0.9).animate(controler)
      ..addListener(() {
        setState(() {});
      });
    controler.forward();
    starTimer();
  }

  dispose() {
    super.dispose();
    controler.dispose();
  }

  Widget transition(String txt, AnimationController controler) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: Offset(0.0, -0.8),
        end: Offset.zero,
      ).animate(controler),
      child: Text(txt,
          style:
              TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 40.0)),
    );
  }

  Widget background(String img) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(img),
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  Widget colorsbackground() {
    return Container(color: Colors.black.withOpacity(0.5));
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Splash Screen"),
      ),
      body: Stack(
        children: [
          background('../images/br1.jpg'),
          colorsbackground(),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 155.0,
                    ),
                    transition("Lendre fera partir des plus grand programmeur",
                        controler),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
