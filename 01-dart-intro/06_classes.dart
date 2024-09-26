void main() {
//   final Hero wolverine = new Hero('Logan', 'Regeneration'); new keyword is optional
//   final wolverine = Hero('Logan', 'Regeneration');
  final wolverine = Hero(name: 'Logan', power: 'Regeneration');

  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);
}

class Hero {
  String name;
  String power;

//   Hero( String pName, String pPower ) {

//     this.name = pName;
// //     this.power = power; 'this keyword is optional'
//     power = pPower;

//   }

//   Hero(String pName, String pPower)
//     : name = pName,
//       power = pPower;

//   Hero(this.name, this.power);

  Hero({required this.name, required this.power});

  @override
  String toString() {
    return '$name - $power';
  }
}
