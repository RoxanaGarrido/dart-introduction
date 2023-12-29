void main (){
  
  final mySquare = Square(side: -10);
  
  //mySquare.side = -5;
  
  print('área: ${mySquare.area}');
  
}

class Square{
  
  //usar _ para privado
  double _side; 
  
  Square({required double side})
    : assert(side >= 0, 'side must be >= 0'),
     _side = side;
  
  //getter
  double get area {
    return _side * _side;
  }
  
  //setter
  set side(double value){
    print('setting new value $value');
    if(value < 0) throw 'Value must be >= 0';
    
    _side = value;
  }
  
  double calculateArea(){
    return _side * _side;
  }
  
}