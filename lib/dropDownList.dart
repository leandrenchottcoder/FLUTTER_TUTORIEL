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
  late List<DropdownMenuItem<String>> listmonths = [];
  String? def;

  months() {
    listmonths.clear();
    listmonths.add(
      DropdownMenuItem(
        value: "Janvier",
        child: Text("Janvier",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0)),
      ),
    );
    listmonths.add(
      DropdownMenuItem(
        value: "Février",
        child: Text("Février",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0)),
      ),
    );
    listmonths.add(
      DropdownMenuItem(
        value: "Mars",
        child: Text("Mars",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0)),
      ),
    );
    listmonths.add(
      DropdownMenuItem(
        value: "Avril",
        child: Text("Avril",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0)),
      ),
    );
    listmonths.add(
      DropdownMenuItem(
        value: "Mai",
        child: Text("Mai",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0)),
      ),
    );
    listmonths.add(
      DropdownMenuItem(
        value: "Juin",
        child: Text("juin",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0)),
      ),
    );
    listmonths.add(
      DropdownMenuItem(
        value: "Juillet",
        child: Text("Juillet",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0)),
      ),
    );

    listmonths.add(
      DropdownMenuItem(
        value: "Août",
        child: Text("Août",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0)),
      ),
    );
    listmonths.add(
      DropdownMenuItem(
        value: "Septembre",
        child: Text("Septembre",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0)),
      ),
    );
    listmonths.add(
      DropdownMenuItem(
        value: "Octobre",
        child: Text("Octobre",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0)),
      ),
    );
    listmonths.add(
      DropdownMenuItem(
        value: "Novembre",
        child: Text("Novembre",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0)),
      ),
    );
    listmonths.add(
      DropdownMenuItem(
        value: "Decembre",
        child: Text("Decembre",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    months();
    return Scaffold(
      appBar: AppBar(
        title: Text("DropDownList"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: DropdownButton(
                  value: def,
                  elevation: 10,
                  items: listmonths,
                  hint: Text("Selectionnez le mois",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold)),
                  onChanged: (String? value) {
                    def = "${value}";
                    setState(() {});
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.all(25.0),
                child: Text(
                    "${def}" == "null"
                        ? ""
                        : "Votre mois selectionné est : ${def}",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
