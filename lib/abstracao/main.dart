// Importação de uma classe de outro arquivo usando o pacote 'coocree/abstracao'.

import 'package:coocree/abstracao/class/class_abstracao.dart';

// Função principal do programa.
void main() {
// Criação de três objetos a partir das classes concretas Dog, Cat e Bird.
  final dog = Dog('Buddy', 3);
  final cat = Cat("Whiskers", 2);
  final bird = Bird('Tweety', 1);

// Impressão de informações sobre cada animal usando o método getAnimalType().
  print('${dog.name} is a ${dog.getAnimalType()} and is ${dog.age} years old.');
  print('${cat.name} is a ${cat.getAnimalType()} and is ${cat.age} years old.');
  print('${bird.name} is a ${bird.getAnimalType()} and is ${bird.age} years old.');
}