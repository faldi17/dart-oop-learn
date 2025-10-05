void main() {
  Car car = Car("Lamborgini", "Red");
  print(car.road(120, "Tol Serpong"));
  // car.road();
}

class Car {
  String brand = "Ferrari";
  final wheel = 4;
  String? color;

  // construtor sederhana with brand & color
  Car(String brand, String color) {
    this.brand = brand;
    this.color = color;
  }
  // Car(String paramBrand, String paramColor) {
  //   brand = paramBrand;
  //   color = paramColor;
  // }

  // method road to call in main
  String road(int speed, String location) {
    if (color == "Red") {
      color = "Merah";
    }
    return "Mobil $brand $color melaju dengan kecepatan $speed km/jam di $location. Ngeeeng... ngeeeng...";
  }

  // void road() {
  //   print("Ngeeeng... ngeeeng...");
  // }
}
