void main() {
  // cascase notation (..property..property)
  Car car = Car()
    ..brand = "BMW"
    ..color = "Blue"
    ..seat = 4;

  print(car.road());

  // cascade notation null
  Car? carNull;
  Car? newCar = carNull
    ?..brand = "Suzuki"
    ..color = "Red";

  print(newCar);
}

class Car {
  // property car
  String brand = "Ferrari";
  final wheel = 2;
  String? color;
  int seat = 2;

  // method road
  String road() {
    if (color == "Blue") {
      color = "Biru";
    }
    return "Panasin mobil $brand $seat kursi warna $color. Brummm... Brummm...";
  }
}
