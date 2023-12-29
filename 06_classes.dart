void main(){
  
  final Hero wolverine = Hero(name: 'Logan', power: 'Regeneración');
  
  print( wolverine );
  
  print( wolverine.name );
  print( wolverine.power );
}

class Hero {
  
  String name;
  String power;
  
  //error
  //Hero( String pName, String pPower ){
  //  name = pName;
  //  power = pPower;
  //}
  
  //inicialización controlada
//  Hero( String pName, String pPower )
//    :  name = pName,
//       power = pPower;
  
  //inicialización automática
 // Hero(this.name, this.power);
  
  Hero({
    required this.name,
    this.power = 'Sin poder'
  });
  
  //sobreescribir
  @override
  String toString(){
    return '$name - $power';
  }
  
}