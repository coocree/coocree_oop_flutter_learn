class Animal {
  String name;
  int age;

  Animal({required this.name, required this.age});

  String speak() {
    return 'Hello, my name is $name!';
  }
}


class Dog extends Animal {
  String breed;

  Dog({required String name, required int age, required this.breed})
      : super(name: name, age: age);

  String bark() {
    return 'Woof! Woof!';
  }
}