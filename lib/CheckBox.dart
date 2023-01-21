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
  Map todos = {
    "Côte d\'ivoire": false,
    "Angleterre": false,
    "Russie        ": false,
    "France        ": false,
    "Togo          ": false,
  };
  List<Widget> todoList() {
    List<Widget> t = [];
    todos.forEach((key, value) {
      Row row = Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("${key}"),
          Checkbox(
              value: value,
              onChanged: (bool? b) {
                setState(() {
                  todos[key] = b;
                });
              })
        ],
      );
      t.add(row);
    });

    return t;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkbox"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: todoList(),
        ),
      ),
    );
  }
}
