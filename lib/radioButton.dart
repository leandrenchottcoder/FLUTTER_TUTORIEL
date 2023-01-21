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
  int? actualRadio;

  List<Widget> radios() {
    List<Widget> l = [];
    for (int x = 0; x < 5; x++) {
      Row row = Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Valeur #${x}"),
          Radio(
              value: x,
              groupValue: actualRadio,
              onChanged: (int? i) {
                setState(() {
                  actualRadio = i;
                });
              }),
        ],
      );
      l.add(row);
    }

    return l;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio Button"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: radios(),
        ),
      ),
    );
  }
}
