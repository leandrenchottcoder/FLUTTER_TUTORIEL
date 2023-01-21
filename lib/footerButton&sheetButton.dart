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
  String? msg1;
  String? msg2;
  String? msg3;

  _msg1() {
    setState(() {
      msg1 = "Vous avez cliquer sur call";
    });
  }

  _msg2() {
    setState(() {
      msg1 = "Vous avez cliquer sur lock";
    });
  }

  _msg3() {
    setState(() {
      msg1 = "Vous avez cliquer sur screen_lock_landscape";
    });
  }

  _sheetButton() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Message envoyer"),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FooterButton & SheetButton"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${msg1}" == "null" ? "" : "${msg1}"),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
                onPressed: () {
                  _sheetButton();
                },
                child: Text("Envoyer")),
          ],
        ),
      ),
      persistentFooterButtons: [
        IconButton(
            tooltip: "Call",
            onPressed: () {
              _msg1();
            },
            icon: Icon(Icons.call)),
        IconButton(
            tooltip: "lock",
            onPressed: () {
              _msg2();
            },
            icon: Icon(Icons.lock)),
        IconButton(
            tooltip: "screen_lock_landscape",
            onPressed: () {
              _msg3();
            },
            icon: Icon(Icons.screen_lock_landscape)),
      ],
    );
  }
}
