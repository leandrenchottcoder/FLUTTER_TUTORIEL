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
  bool val1 = false;
  bool val2 = false;
  double val3 = 0.0;

  _val1(bool b) {
    setState(() {
      val1 = b;
    });
  }

  _val2(bool s) {
    setState(() {
      val2 = s;
    });
  }

  _val3(double d) {
    setState(() {
      val3 = d;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider & Switch"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Switch(value: val1, onChanged: _val1),
            Switch(value: val2, onChanged: _val2, activeColor: Colors.green),
            SizedBox(height: 20.0),
            Text("Votre age : ${(val3 * 100).round()}"),
            Slider(value: val3, onChanged: _val3),
          ],
        ),
      ),
    );
  }
}
