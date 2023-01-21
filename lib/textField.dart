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
  String? value1;
  String? value2;
  _onSubmit(String a) {
    setState(() {
      value1 = "${a}";
    });
  }

  _onChange(String b) {
    setState(() {
      value2 = "${b}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("${value2}" == "null"
                  ? " "
                  : "Entrain de saisir : ${value2}"),
              Text(
                  "${value1}" == "null" ? " " : "Vous avez saisir : ${value1}"),
              TextField(
                onChanged: _onChange,
                onSubmitted: _onSubmit,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Nom",
                  labelStyle: TextStyle(color: Colors.blue),
                  hintText: "Entrez votre nom",
                  hintStyle: TextStyle(color: Colors.blue),
                  icon: Icon(
                    Icons.person,
                    color: Colors.blue,
                    size: 40.0,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              TextField(
                onChanged: _onChange,
                onSubmitted: _onSubmit,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Prenom",
                  labelStyle: TextStyle(color: Colors.green),
                  hintText: "Entrez votre prénom",
                  hintStyle: TextStyle(color: Colors.green),
                  icon: Icon(
                    Icons.account_box,
                    color: Colors.green,
                    size: 40.0,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              TextField(
                onChanged: _onChange,
                onSubmitted: _onSubmit,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Téléphone",
                  labelStyle: TextStyle(color: Colors.teal),
                  hintText: "Entrez votre téléphone",
                  hintStyle: TextStyle(color: Colors.teal),
                  icon: Icon(
                    Icons.add_call,
                    color: Colors.teal,
                    size: 40.0,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              TextField(
                onChanged: _onChange,
                onSubmitted: _onSubmit,
                keyboardType: TextInputType.number,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Mot de passe",
                  labelStyle: TextStyle(color: Colors.red),
                  hintText: "Entrez votre mot de passe",
                  hintStyle: TextStyle(color: Colors.red),
                  icon: Icon(
                    Icons.lock,
                    color: Colors.red,
                    size: 40.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
