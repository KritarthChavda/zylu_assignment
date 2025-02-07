import 'package:hive/hive.dart';

@HiveType(typeId: 0)
class Vehicle extends HiveObject {
  @HiveField(0)
  String name;
  @HiveField(1)
  double mileage;
  @HiveField(2)
  int year;
  @HiveField(3)
  String assetImage;

  Vehicle({required this.name, required this.mileage, required this.year, required this.assetImage});
}