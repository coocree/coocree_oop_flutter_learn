import 'package:flutter/material.dart';
import 'class/class_polimorfismo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Animal animal1 = Cachorro();
  final Animal animal2 = Gato();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sons dos Animais'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AnimalButton(animal: animal1),
            AnimalButton(animal: animal2),
          ],
        ),
      ),
    );
  }
}