abstract class Animal {}

//Clases que heredan de Animal
class Mammal extends Animal {}

class Bird extends Animal {}

class Fish extends Animal {}

//Mixins
mixin Flyer {
  void fly() => print("Estoy volando");
}

mixin Walker {
  void walk() => print("Estoy caminando");
}

mixin Swimmer {
  void swim() => print("Estoy nadando");
}

//Mamíferos
class Dolphin extends Mammal with Swimmer {}

class Bat extends Mammal with Flyer, Walker {}

class Cat extends Mammal with Walker {}

//Aves
class Dove extends Bird with Walker, Flyer {}

class Duck extends Bird with Flyer, Walker, Swimmer {}

//Peces
class Shark extends Fish with Swimmer {}

class FlyingFish extends Fish with Swimmer, Flyer {}

//Función main principal

void main() {
  final flipper = Dolphin();
  flipper.swim();

  final batman = Bat();
  batman.walk();
  batman.fly();

  final daffy = Duck();
  daffy.fly();
  daffy.swim();
  daffy.walk();
}
