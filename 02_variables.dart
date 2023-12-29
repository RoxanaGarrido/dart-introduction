void main(){
  
  final String pokemon = 'Ditto';
  
  final int hp = 100;
  
  final bool isAlive = true;
  
  //final abilities = <String>['impostor'];
  final List<String> abilities = ['impostor'];
  final List<String> sprites = ['ditto/front.png', 'ditto/back.png'];

  
  //dynamic == null cualquier valor por defecto null
  
  dynamic errorMessage = 'Hola';
  errorMessage = true;
  errorMessage = [1,2,3,4,5,6];
  errorMessage = {1,2,3,4,5,6};
  errorMessage = () => true;
  errorMessage = null;
  
  
  //string multilinea
  print("""
   $pokemon
   $hp
   $isAlive
   $abilities
   $sprites
   $errorMessage
  """);
   
}