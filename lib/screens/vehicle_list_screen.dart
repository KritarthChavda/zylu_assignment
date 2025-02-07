import 'package:flutter/material.dart';
import 'package:zylu_assignment/data/vehicle_data.dart';
import '../models/vehicle.dart';

class VehicleListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Vehicle> vehicles = VehicleData.getVehicles();
    int currentYear = DateTime.now().year;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "🚗 Vehicle List",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 233, 233, 233),
                Color.fromARGB(255, 49, 49, 49)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        centerTitle: true,
        elevation: 5,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.grey.shade100, Colors.blue.shade50],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        padding: const EdgeInsets.all(12.0),
        child: ListView.builder(
          itemCount: vehicles.length,
          itemBuilder: (context, index) {
            Vehicle vehicle = vehicles[index];
            int vehicleAge = currentYear - vehicle.year;

            // Determine background color and pollution status
            Color bgColor;
            String status;
            IconData icon;
            if (vehicle.mileage >= 15 && vehicleAge <= 5) {
              bgColor = Colors.green.shade100;
              status = "Fuel Efficient & Low Pollutant";
              icon = Icons.eco;
            } else if (vehicle.mileage >= 15 && vehicleAge > 5) {
              bgColor = Colors.amber.shade100;
              status = "Fuel Efficient but Moderately Pollutant";
              icon = Icons.warning_amber_rounded;
            } else {
              bgColor = Colors.red.shade100;
              status = "Max Pollutant";
              icon = Icons.error;
            }

            return Card(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18)),
              color: bgColor,
              child: SizedBox(
                width: double.infinity, // Prevents overflow
                child: ListTile(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(vehicle.assetImage,
                        width: 55, height: 55, fit: BoxFit.cover),
                  ),
                  title: Text(
                    vehicle.name,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mileage: ${vehicle.mileage} km/l • Year: ${vehicle.year}",
                        style: const TextStyle(fontSize: 14, color: Colors.black87),
                        softWrap: true,
                      ),
                      const SizedBox(height: 6),
                      Row(
                        children: [
                          Icon(icon, color: Colors.black54, size: 18),
                          const SizedBox(width: 6),
                          Expanded(
                            child: Text(
                              status,
                              style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                              softWrap: true,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
