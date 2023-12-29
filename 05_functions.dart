void main(){
  
  print(greetEveryone());
  
  print('Suma ${addTwoNumbers(10,20)}');
  
  print(greetPerson(name: 'Roxana'));
  
  print(greetPerson(name: 'Roxana', message: 'Hi'));
  
}

String greetEveryone(){
  return 'Hello everyone!';
}

//funcion flecha o lambda
//String greetEveryone() => 'Hello everyone';

//tipado estricto
int addTwoNumbers(int a, int b){
  return a + b;
}

//int addTwoNumbers(a, b) => a+b;

//param opcionales []
int addTwoNumbersOptional(int a, [int? b]){

  b = b ?? 0; //si b no es null b, sino 0
  //b ??= 0
  
  return a + b;  
}

//valor default
int addTwoNumbersDefault(int a, [int b = 0]){
  return a + b;  
}


//params opcionales y por nombre {}
//required obliga a usar param
String greetPerson({required String name, String? message = 'Hola'}){
  return '$message, $name';
}