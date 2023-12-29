void main(){
  
  // clases abstractas no pueden ser inicializadas
  //final windPlant = EnergyPlant();
  
  final windPlant = WindPlant( initialEnergy: 100);
  final nuclearPlant = NuclearPlant( energyLeft: 100);
  
  print( 'wind energyLeft: ${ chargePhone( windPlant )}');
  print( 'nuclear energyLeft: ${ chargePhone( nuclearPlant )}');
  
}

//Este método no cambia si se hacen nuevas clases de EnergyPlants
double chargePhone( EnergyPlant plant ){
 if(plant.energyLeft < 10){
   throw Exception('Not enough energy');
 } 
  
  return plant.energyLeft - 10;
}

enum PlantType{nuclear, wind, water}

//es como un molde
abstract class EnergyPlant{
  
  double energyLeft;
  final PlantType type; // nuclear, wind, water
  
  EnergyPlant({
    required this.energyLeft,
    required this.type
  });
    
  //definición de métodos sin implementar
  void consumeEnergy( double amount);
  
}

// extends o implements

//extend hereda todo de la clase abstracta
class WindPlant extends EnergyPlant {
  
  //llama al constructor del padre
  WindPlant({required double initialEnergy})
    : super( 
      energyLeft: initialEnergy, 
      type: PlantType.wind 
    );
  
  @override
  void consumeEnergy( double amount ){
    energyLeft -= amount;
  }
}

//implements NO hereda todo, sino lo que se hace @override
class NuclearPlant implements EnergyPlant{
  
  @override
  double energyLeft;
  @override
  final PlantType type = PlantType.nuclear;
  
  NuclearPlant({required this.energyLeft});
  
  @override
  void consumeEnergy(double amount){
    energyLeft -= (amount * 0.5);
  }
}

