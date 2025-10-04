void main() {
  Car car = Car();
  print(car.road());
  // car.road();
}

class Car {
  String brand = "Unknow";
  final wheel = 4;
  String? color;

  // method road to call in main
  String road() {
    return "Ngeeeng... ngeeeng...";
  }

  // void road() {
  //   print("Ngeeeng... ngeeeng...");
  // }
}
