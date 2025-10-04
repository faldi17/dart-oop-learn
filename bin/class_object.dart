void main() {
  // car class
  final car1 = Car();
  var car2 = Car();
  Car car3 = Car();
  Car car4 = Car();
  print(car1);
  print(car2);
  print(car3.runtimeType);
  print(car4);

  // motor class
  Motor motorA = Motor("Kawasaki");
  Motor motorB = Motor("Ducati");
  Motor motorC = Motor("Yamaha");
  print(motorA.brand);
  print(motorB.brand);
  print(motorC.brand);
}

class Car {}

class Motor {
  String brand;
  Motor(this.brand);
}
