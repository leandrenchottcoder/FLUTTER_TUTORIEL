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

class _myAppState extends State<myApp> with SingleTickerProviderStateMixin {
  final GlobalKey<AnimatedListState> gl = GlobalKey<AnimatedListState>();
  List<String> msgleandre = [
    'Bonjour N\'CHOTT ',
    'Comment vas-tu ? ',
    'Oui ça va bien ',
    'Tu fais quoi ? ',
    'Ok on se call plutard',
    'A+',
  ];
  List<String> msgnchott = [
    'Salut LEANDRE ',
    'Oui ça va',
    'Et chez toi ? ',
    'Je suis chez ma tante ? ',
    'Ok A+',
  ];
  List<String> msgmix = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Container(
            width: 25.0,
            height: 25.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                width: 2,
                color: Colors.white,
              ),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.keyboard_arrow_left,
                  color: Colors.black,
                  size: 20.0,
                ),
              ],
            ),
          ),
          onPressed: () {},
        ),
        title: Container(
          child: Row(
            children: [
              SizedBox(width: 30.0),
              Container(
                child: InkWell(
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('../images/avatar2.jpg'),
                    radius: 30.0,
                  ),
                  onTap: () {},
                ),
              ),
              SizedBox(width: 10.0),
              Text("N'CHOTT",
                  style: TextStyle(fontSize: 15.0, color: Colors.white)),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.video_call, color: Colors.white, size: 20.0),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.phone, color: Colors.white, size: 20.0),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.remove_circle_outline,
                color: Colors.white, size: 20.0),
          ),
        ],
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.deepPurple,
        ),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('../images/avatar1.jpeg'),
                  radius: 30.0,
                ),
                subtitle: Text("LEANDRE",
                    style: TextStyle(color: Colors.white, fontSize: 17.0)),
                onTap: () {},
              ),
            ),
            Expanded(
              flex: 10,
              child: Padding(
                padding: EdgeInsets.only(top: 5.0),
                child: Container(
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.7),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(100.0),
                      topRight: Radius.circular(15.0),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Icon(Icons.photo_camera),
                  Icon(Icons.mic),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Container(
                      width: 245.0,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.4),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      child: TextField(
                        enabled: false,
                        autofocus: false,
                        decoration: InputDecoration(
                            enabledBorder: InputBorder.none,
                            icon: Icon(
                              Icons.keyboard,
                              color: Colors.black,
                            ),
                            hintText: "Tapez votre texte ici"),
                      ),
                    ),
                  ),
                  Icon(Icons.sentiment_satisfied),
                  Icon(Icons.attach_file),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
