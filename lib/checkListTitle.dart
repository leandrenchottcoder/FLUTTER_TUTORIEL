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
  bool val3 = false;

  _val1(s) {
    setState(() {
      val1 = s;
    });
  }

  _val2(t) {
    setState(() {
      val2 = t;
    });
  }

  _val3(d) {
    setState(() {
      val2 = d;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CheckBoxListTitle"),
      ),
      body: Center(
        child: Column(children: [
          CheckboxListTile(
            value: val1,
            onChanged: _val1,
            title: Text("Côte d\'ivoire"),
            subtitle: Text("Yamoussoukro"),
            controlAffinity: ListTileControlAffinity.trailing,
          ),
          CheckboxListTile(
            value: val2,
            onChanged: _val2,
            title: Text("Espagne"),
            subtitle: Text("Madrid"),
            controlAffinity: ListTileControlAffinity.trailing,
          ),
          CheckboxListTile(
            value: val3,
            onChanged: _val3,
            title: Text("France"),
            subtitle: Text("Paris"),
            controlAffinity: ListTileControlAffinity.trailing,
          )
        ]),
      ),
    );
  }
}
