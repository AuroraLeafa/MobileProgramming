//Refansyach - 19226
//Create a Simple Dart Class
class Bicycle{
  int cadence;
  int _speed = 0;
  int get speed => _speed;
  int gear;
  
  void applyBrake(int decrement){
    _speed -= decrement;
  }
  void speedUp(int increment){
    _speed += increment;
  }
  
  Bicycle(this.cadence, this.gear);

  @override
  String toString() => 'Bicycle: $speed mph';
}

void main() {
  var bike = Bicycle(2,1);
  print(bike);
}
