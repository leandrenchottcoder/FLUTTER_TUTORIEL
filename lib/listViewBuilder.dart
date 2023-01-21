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
  List<String> getListElement() {
    var item = List<String>.generate(25, (index) => "Article: $index");
    return item;
  }

  Widget getListView() {
    var listitem = getListElement();
    var listview = ListView.builder(
        itemCount: listitem.length,
        itemBuilder: (context, val) {
          return ListTile(
            title: Text(listitem[val],
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.red,
                )),
            leading: Icon(
              Icons.nature,
              color: Colors.blue,
            ),
            onTap: () {
              debugPrint("Valeur active ${listitem[val]}");
            },
          );
        });
    return listview;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListViewBuilder"),
      ),
      body: Container(
        child: getListView(),
      ),
    );
  }
}
