import 'package:hive/hive.dart';
import '../models/vehicle.dart';

class VehicleAdapter extends TypeAdapter<Vehicle> {
  @override
  final int typeId = 0;

  @override
  Vehicle read(BinaryReader reader) {
    return Vehicle(
      name: reader.readString(),
      mileage: reader.readDouble(),
      year: reader.readInt(),
      assetImage: reader.readString(),
    );
  }

  @override
  void write(BinaryWriter writer, Vehicle obj) {
    writer.writeString(obj.name);
    writer.writeDouble(obj.mileage);
    writer.writeInt(obj.year);
    writer.writeString(obj.assetImage);
  }
}