void main() {
//   final windPlant = EnergyPlant();

  final windPlant = WindPlant(initialEnergy: 80);
  final nuclearPlant = NuclearPlant(energyLeft: 1000);

  print(windPlant);

  print('wind ${chargePhone(windPlant)}');
  print('nuke ${chargePhone(nuclearPlant)}');
}

double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception('Not enough energy');
  }

  return plant.energyLeft - 10;
}

enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {
  double energyLeft;
  final PlantType type; // nuclear, wind, water

  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount);
}

// extens o implements

class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
      : super(energyLeft: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }

  @override
  toString() {
    return 'Energy left: $energyLeft';
  }
}

class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;

  @override
  PlantType type = PlantType.nuclear;

  NuclearPlant({required this.energyLeft});

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }
}
