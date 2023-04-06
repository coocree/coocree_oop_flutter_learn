## Abstração

O conceito de abstração em Flutter é uma técnica de programação que visa a separação da 
implementação detalhada de uma funcionalidade específica de sua interface com o usuário. 
Em outras palavras, a abstração permite que o desenvolvedor se concentre nas características 
mais importantes e de mais alto nível da interface, sem se preocupar com detalhes de implementação.

A abstração em Flutter é frequentemente usada para construir interfaces de usuário, uma vez que 
o framework oferece uma variedade de widgets pré-construídos para ajudar nessa tarefa. Esses widgets
abstraem a implementação específica de cada componente de interface, permitindo que o desenvolvedor 
se concentre na lógica de negócios de sua aplicação, sem se preocupar com detalhes de implementação.

Por exemplo, em vez de se preocupar com a implementação detalhada de um botão, o desenvolvedor pode
simplesmente utilizar um widget de botão pré-construído no Flutter, que já possui funcionalidades 
como detecção de toque e feedback visual de pressionamento.

Em resumo, o conceito de abstração em Flutter é uma técnica de programação que visa a simplificação 
e a otimização do processo de desenvolvimento de interfaces de usuário, permitindo que o desenvolvedor
se concentre nas características mais importantes da interface, sem se preocupar com a implementação 
de detalhes.

## Entenda o Código

#### No arquivo class_abstracao.dart temos o seguinte:

```flutter
abstract class Animal {
  String name;
  int age;
  
  Animal(this.name, this.age);

  String getAnimalType();
}

class Dog extends Animal {
  Dog(String name, int age) : super(name, age);

  @override
  String getAnimalType() {
    return "Dog";
  }
}

class Cat extends Animal {
  Cat(String name, int age) : super(name, age);

  @override
  String getAnimalType() {
    return "Cat";
  }
}

class Bird extends Animal {
  Bird(String name, int age) : super(name, age);

  @override
  String getAnimalType() {
    return "Bird";
  }
}
```
Este código define uma classe abstrata Animal que possui duas propriedades, `nome` e `idade`, e um 
método abstrato `getAnimalType()`, que deve ser implementado por todas as classes que herdam Animal. 
As classes concretas `Dog`, `Cat` e `Bird` estendem a classe Animal e implementam o método `getAnimalType()`, 
retornando o tipo do animal correspondente. Cada classe concreta também possui um construtor que 
recebe um `nome` e uma `idade` e chama o construtor da classe pai com esses valores. Essas classes são 
utilizadas para representar animais de estimação, permitindo a criação de objetos específicos para 
cada tipo de animal com propriedades e métodos comuns.

#### No arquivo main.dart temos o seguinte:

```flutter
import 'package:coocree/abstracao/class/class_abstracao.dart';

void main() {
  final dog = Dog('Buddy', 3);
  final cat = Cat("Whiskers", 2);
  final bird = Bird('Tweety', 1);

  print('${dog.name} is a ${dog.getAnimalType()} and is ${dog.age} years old.');
  print('${cat.name} is a ${cat.getAnimalType()} and is ${cat.age} years old.');
  print('${bird.name} is a ${bird.getAnimalType()} and is ${bird.age} years old.');
}
```

Este código importa uma classe de outro arquivo usando o pacote 
`coocree/abstracao/class/class_abstracao.dart` e cria três objetos a partir das classes concretas 
`Dog`, `Cat` e `Bird`. Esses objetos representam animais de estimação específicos, com nomes e 
idades definidos em seus construtores. O método `getAnimalType()` é chamado em cada objeto e retorna 
o tipo de animal correspondente. Em seguida, as informações sobre cada animal são impressas no 
console usando as propriedades `name` e `age` dos objetos e o método `getAnimalType()`. Esse código é um 
exemplo simples de como usar as classes abstratas e concretas para criar objetos comuns e 
implementar funcionalidades específicas para cada classe.