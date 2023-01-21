import 'package:flutter/material.dart';

main() {
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false, home: myApp()),
  );
}

class myApp extends StatefulWidget {
  const myApp({super.key});

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card"),
      ),
      body: Center(
        child: Card(
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text("Compte"),
                subtitle: Text("info compte"),
              ),
              Divider(
                height: 10.0,
              ),
              ListTile(
                leading: Icon(Icons.key),
                title: Text("sécurité"),
                subtitle: Text("access au compte"),
              ),
              Divider(
                height: 10.0,
              ),
              ListTile(
                leading: Icon(Icons.email),
                title: Text("Email"),
                subtitle: Text("Votre boîte Email"),
              ),
              Divider(
                height: 10.0,
              ),
              ListTile(
                leading: Icon(Icons.call),
                title: Text("Appel"),
                subtitle: Text("Passer un appel"),
              ),
              Divider(
                height: 10.0,
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: () {}, child: Text("Confirmer")),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text("Annuler"),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.resolveWith(
                              (states) => Colors.red))),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
