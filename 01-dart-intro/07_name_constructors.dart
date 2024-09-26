void main() {
  final Map<String, dynamic> rawJson = {
    'isAlive': true,
    'name': 'Tony Stark',
    'power': 'Money'
  };

//   final ironMan = Hero(isAlive: false, name: 'Tony Stark', power: 'Money');

//   final ironman = Hero(
//       isAlive: rawJson['isAlive2'] ?? false,
//       name: 'Tony Stark',
//       power: 'Money');

//   print(ironman);

  final ironman = Hero.fromJson(rawJson);

  print(ironman);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({required this.name, required this.power, required this.isAlive});

  Hero.fromJson(Map<String, dynamic> json)
      : name = json['name'] ?? 'No name found',
        power = json['power'] ?? 'No power found',
        isAlive = json['isAlive'] ?? 'No status found';

  @override
  toString() {
    return '$name, $power, isAlive: ${isAlive ? 'YES!' : 'Nop'}';
  }
}
