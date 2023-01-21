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
  int initial_step = 0;
  List<Step> steps = [
    Step(
      title: Text("Confirmez votre nom et prenom",
          style: TextStyle(color: Colors.blue)),
      content: Text("Leandre N\'chott"),
      isActive: true,
      subtitle: Text("ETAPE 1"),
    ),
    Step(
      title: Text("Confirmez votre addresse",
          style: TextStyle(color: Colors.orange)),
      content: Text("Abidjan, 200 bay street"),
      isActive: true,
      subtitle: Text("ETAPE 2"),
    ),
    Step(
      title: Text("Confirmez votre numéro de téléphone",
          style: TextStyle(color: Colors.purple)),
      content: Text("+225 07 77 75 07 79"),
      isActive: true,
      subtitle: Text("ETAPE 3"),
    ),
    Step(
      title: Text("Donner votre sexe", style: TextStyle(color: Colors.red)),
      content: Text("Masculin"),
      isActive: true,
      subtitle: Text("ETAPE 4"),
    ),
    Step(
      title: Text("MERCI", style: TextStyle(color: Colors.green)),
      content: Image.asset('../images/br1.jpg'),
      isActive: true,
      state: StepState.complete,
      subtitle: Text("FIN"),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stepper"),
      ),
      body: Stepper(
        currentStep: this.initial_step,
        steps: steps,
        type: StepperType.vertical,
        onStepTapped: (Step) {
          setState(() {
            initial_step = Step;
          });
        },
        onStepContinue: () {
          setState(() {
            if (initial_step < steps.length - 1) {
              initial_step = initial_step + 1;
            } else {
              initial_step = 0;
            }
          });
        },
        onStepCancel: () {
          setState(() {
            if (initial_step > 0) {
              initial_step = initial_step - 1;
            } else {
              initial_step = 0;
            }
          });
        },
      ),
    );
  }
}
