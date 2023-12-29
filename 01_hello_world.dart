void main(){
  
  var myName = 'Roxana';
  
  String myName2 = 'Roxana';
  
  print('Hola $myName'); // interpolación string
  
  print('Hola ${myName.toUpperCase()}'); // expresiones dentro de {}
  
  final name = 'Nombre'; // no se puede modificar. se asigna en tiempo de ejecución
  
  const name1 = 'name1'; // crear constante en tiempo de construcción
  
  late final name2; // sin inicializar
  
}