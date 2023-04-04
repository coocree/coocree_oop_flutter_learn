import 'package:flutter/material.dart';

class Animal {
  void fazerSom() {
    print('Som de animal');
  }
}

class Cachorro extends Animal {
  @override
  void fazerSom() {
    print('Latido');
  }
}

class Gato extends Animal {
  @override
  void fazerSom() {
    print('Miado');
  }
}

class AnimalButton extends StatelessWidget {
  final Animal animal;

  const AnimalButton({required this.animal});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        animal.fazerSom();
      },
      child: Text('O animal faz som'),
    );
  }
}