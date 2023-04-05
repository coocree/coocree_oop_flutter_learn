import 'package:flutter/material.dart';
import 'class/class_heranca.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animal App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Animal App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                Dog(name: 'Max', age: 2, breed: 'Golden Retriever').speak(),
              ),
              Text(
                Dog(name: 'Buddy', age: 4, breed: 'Labrador Retriever').bark(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}