void main() {
  Car car = Car();
  car.brand = "Toyota";
  car.color = "Red";

  print("Brand Mobil : ${car.brand}");
  print("Jumlah Roda : ${car.wheel}");
  print("Warna Mobil : ${car.color}");
}

class Car {
  String brand = "Unknow";
  final wheel = 4;
  String? color;
}
