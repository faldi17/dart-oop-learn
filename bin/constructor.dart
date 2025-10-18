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

  // CONSTANT CONSTRUCTOR
  ImmutableCar immuCar = const ImmutableCar(6, 4);
  ImmutableCar immuCar2 = const ImmutableCar(6, 4);
  print(immuCar == immuCar2);

  Person person = Person.create();
  Person person2 = Person.create();
  print(person == person2);
}

// CONSTANT CONSTRUCTOR
class ImmutableCar {
  final int wheel;
  final int seat;

  const ImmutableCar(this.seat, this.wheel);
}

// FACTORY CONSTRUCTOR
class Person {
  Person();
  static final Person _person = Person();

  factory Person.create() {
    return _person;
  }
}

class Car {
  String brand = "Ferrari";
  final wheel = 4;
  String? color;
  int seat = 2;

  // construtor sederhana with brand & color
  Car(this.brand, this.color);

  Car.withBrand(this.brand);
  Car.withColor(this.color);

  Car.withBrandAndColor(this.brand, this.color) : seat = 4;

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
    return "Mobil $brand $color kursi $seat melaju dengan kecepatan $speed km/jam di $location. Ngeeeng... ngeeeng...";
  }

  // void road() {
  //   print("Ngeeeng... ngeeeng...");
  // }
}
