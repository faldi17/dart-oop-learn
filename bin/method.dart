void main() {
  Car car = Car();
  print(car.road(120, "Tol Serpong"));
  // car.road();
}

class Car {
  String brand = "Ferrari";
  final wheel = 4;
  String? color;

  // method road to call in main
  String road(int speed, String location) {
    return "Mobil $brand melaju dengan kecepatan $speed km/jam di $location. Ngeeeng... ngeeeng...";
  }

  // void road() {
  //   print("Ngeeeng... ngeeeng...");
  // }
}
