void main() {
  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ['impostor'];

  // dynamic: puede ser cualquier tipo de dato
  // dynamic == null

  dynamic errorMessage = 'Hola';

  print("""
    $pokemon
    $hp
    $isAlive
    $abilities
    $errorMessage
""");
}
