import 'package:flutter/material.dart';
import 'background.dart';
import 'transition.dart';
import 'buttonInfo.dart';

class Secondscreen extends StatefulWidget {
  const Secondscreen({super.key});

  @override
  State<Secondscreen> createState() => _SecondscreenState();
}

class _SecondscreenState extends State<Secondscreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controler;
  late Animation<double> animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controler = AnimationController(
      duration: Duration(
        milliseconds: 2000,
      ),
      vsync: this,
    );
    animation = Tween(begin: 0.0, end: 0.9).animate(controler)
      ..addListener(() {
        setState(() {});
      });
    controler.forward();
  }

  dispose() {
    super.dispose();
    controler.dispose();
  }

  Widget transition(String txt, AnimationController controler) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: Offset(0.0, -0.8),
        end: Offset.zero,
      ).animate(controler),
      child: Text(txt,
          style:
              TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 40.0)),
    );
  }

  Widget background(String img) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(img),
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  Widget colorsbackground() {
    return Container(color: Colors.black.withOpacity(0.5));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          background('../images/r1.jpg'),
          colorsbackground(),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: ListView(
                children: [
                  SizedBox(
                    height: 50.0,
                  ),
                  transition(
                      "Bienvenu sur votre internet vitesse vitesse lumière",
                      controler),
                  SizedBox(
                    height: 50.0,
                  ),
                  SlideTransition(
                    position: Tween<Offset>(
                            begin: Offset(0.0, -0.9), end: Offset.zero)
                        .animate(controler),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelStyle: TextStyle(color: Colors.white),
                        labelText: 'Login',
                        hintText: "Entrez votre login",
                        icon: Icon(Icons.lock, color: Colors.blueGrey),
                      ),
                      style: TextStyle(color: Colors.white),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  SlideTransition(
                    position: Tween<Offset>(
                            begin: Offset(0.0, -0.9), end: Offset.zero)
                        .animate(controler),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelStyle: TextStyle(color: Colors.white),
                        labelText: 'Mot de passe ',
                        hintText: "Entrez votre mot de passe",
                        icon: Icon(Icons.lock, color: Colors.blueGrey),
                      ),
                      style: TextStyle(color: Colors.white),
                      keyboardType: TextInputType.text,
                      obscureText: true,
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  SlideTransition(
                      position: Tween<Offset>(
                              begin: Offset(0.0, -0.6), end: Offset.zero)
                          .animate(controler),
                      child: buttoninfo('Connexion Rapide', () {
                        debugPrint('Accès direct');
                      })),
                  SizedBox(
                    height: 10.0,
                  ),
                  FadeTransition(
                    opacity: animation,
                    child: SlideTransition(
                        position: Tween<Offset>(
                                begin: Offset(0.0, -0.6), end: Offset.zero)
                            .animate(controler),
                        child: buttoninfo(
                            'Creation de comptecompte crée avec succès', () {
                          debugPrint('Accès direct');
                        })),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
