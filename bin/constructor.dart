void main() {
  Car car = Car("Lamborgini", "Red");

  Car carWithBrand = Car.withBrand("Pajero");
  Car carWithColor = Car.withColor("Black");

  Car carWithBrandColor = Car.withBrandAndColor("Rush", "White");

  print(carWithBrand.brand);
  print(carWithColor.color);

  print(carWithBrandColor.road(120, "Gading Serpong"));

  print(car.road(120, "Tol Serpong"));
  // car.road();
}

class Car {
  String brand = "Ferrari";
  final wheel = 4;
  String? color;

  // construtor sederhana with brand & color
  Car(this.brand, this.color);

  Car.withBrand(this.brand);
  Car.withColor(this.color);

  Car.withBrandAndColor(this.brand, this.color);

  // {
  //   this.brand = brand;
  //   this.color = color;
  // }
  // Car(String paramBrand, String paramColor) {
  //   brand = paramBrand;
  //   color = paramColor;
  // }

  // method road to call in main
  String road(int speed, String location) {
    if (color == "Red") {
      color = "Merah";
    } else if (color == "White") {
      color = "Putih";
    } else {
      color = "Tidak dikenali";
    }
    return "Mobil $brand $color melaju dengan kecepatan $speed km/jam di $location. Ngeeeng... ngeeeng...";
  }

  // void road() {
  //   print("Ngeeeng... ngeeeng...");
  // }
}
