// Declaração de uma classe abstrata Animal que contém as propriedades name e age
// e um método abstrato getAnimalType().

abstract class Animal {
  String name;
  int age;

  Animal(this.name, this.age);

// Método abstrato que deve ser implementado nas subclasses
  String getAnimalType();
}

// Classe Dog que estende a classe Animal.
class Dog extends Animal {
// Construtor que recebe name e age e chama o construtor da superclasse.
  Dog(String name, int age) : super(name, age);

// Implementação do método abstrato da superclasse.
  @override
  String getAnimalType() {
    return "Dog";
  }
}

// Classe Cat que estende a classe Animal.
class Cat extends Animal {
// Construtor que recebe name e age e chama o construtor da superclasse.
  Cat(String name, int age) : super(name, age);

// Implementação do método abstrato da superclasse.
  @override
  String getAnimalType() {
    return "Cat";
  }
}

// Classe Bird que estende a classe Animal.
class Bird extends Animal {
// Construtor que recebe name e age e chama o construtor da superclasse.
  Bird(String name, int age) : super(name, age);

// Implementação do método abstrato da superclasse.
  @override
  String getAnimalType() {
    return "Bird";
  }
}
