import 'package:flutter/material.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StaggeredGridView"),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
      ),
    );
  }
}

class Info {
  String? images;
  String? title;
  String? city;
  Info({this.images, this.title, this.city});
}

List<Info> infos = [
  Info(
    images: '../images/br1.jpg',
    title: 'Brabus 1-car-5 stars',
    city: 'Abidjan',
  ),
  Info(
    images: '../images/br1.jpg',
    title: 'Brabus 1-car-5 stars',
    city: 'Abidjan',
  ),
  Info(
    images: '../images/br1.jpg',
    title: 'Brabus 1-car-5 stars',
    city: 'Abidjan',
  ),
  Info(
    images: '../images/br1.jpg',
    title: 'Brabus 1-car-5 stars',
    city: 'Abidjan',
  ),
  Info(
    images: '../images/br1.jpg',
    title: 'Brabus 1-car-5 stars',
    city: 'Abidjan',
  ),
  Info(
    images: '../images/br1.jpg',
    title: 'Brabus 1-car-5 stars',
    city: 'Abidjan',
  ),
  Info(
    images: '../images/br1.jpg',
    title: 'Brabus 1-car-5 stars',
    city: 'Abidjan',
  ),
  Info(
    images: '../images/br1.jpg',
    title: 'Brabus 1-car-5 stars',
    city: 'Abidjan',
  ),
  Info(
    images: '../images/br1.jpg',
    title: 'Brabus 1-car-5 stars',
    city: 'Abidjan',
  ),
];

class showImage extends StatelessWidget {
  final Info verif;
  const showImage({super.key, required this.verif});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset("${verif.images}"),
        ),
        Text(
          "${verif.title}",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          "${verif.city}",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 30.0,
        ),
      ],
    );
  }
}
