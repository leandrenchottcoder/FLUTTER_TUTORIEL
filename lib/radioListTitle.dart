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
  int? val1;
  int? val2;

  change1(b) {
    setState(() {
      val1 = b;
    });
  }

  change2(int m) {
    setState(() {
      val2 = m;
    });
  }

  Widget radio() {
    List<Widget> _Button_radio = [];
    for (int x = 0; x < 5; x++) {
      _Button_radio.add(
        RadioListTile(
            value: x,
            groupValue: val1,
            onChanged: change1,
            controlAffinity: ListTileControlAffinity.trailing,
            title: Text("Choix ${x}")),
      );
    }
    Column column = Column(
      children: _Button_radio,
    );
    return column;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RadioListTitle"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            radio(),
          ],
        ),
      ),
    );
  }
}
