import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:zylu_assignment/adapters/vehicle_adapter.dart';
import 'package:zylu_assignment/models/vehicle.dart';
import 'package:zylu_assignment/screens/vehicle_list_screen.dart';
import 'package:hive_flutter/hive_flutter.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(VehicleAdapter());
  await Hive.openBox<Vehicle>('vehicles');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: VehicleListScreen(),
    );
  }
}