import '../models/vehicle.dart';

class VehicleData {
  static List<Vehicle> getVehicles() {
    return [
      Vehicle(name: "Honda Civic", mileage: 16.5, year: 2020, assetImage: "assets/honda_civic.png"),
      Vehicle(name: "Toyota Corolla", mileage: 17.0, year: 2018, assetImage: "assets/toyota_corolla.png"),
      Vehicle(name: "Ford Mustang", mileage: 10.5, year: 2016, assetImage: "assets/ford_mustang.png"),
      Vehicle(name: "Tesla Model 3", mileage: 0.0, year: 2023, assetImage: "assets/tesla_model_3.png"),
      Vehicle(name: "BMW 3 Series", mileage: 14.5, year: 2019, assetImage: "assets/bmw_3_series.png"),
      Vehicle(name: "Audi A4", mileage: 15.2, year: 2017, assetImage: "assets/audi_a4.png"),
      Vehicle(name: "Mercedes C-Class", mileage: 12.8, year: 2015, assetImage: "assets/mercedes_c_class.png"),
      Vehicle(name: "Hyundai Elantra", mileage: 18.0, year: 2021, assetImage: "assets/hyundai_elantra.png"),
      Vehicle(name: "Chevrolet Camaro", mileage: 9.5, year: 2014, assetImage: "assets/chev_camaro.png"),
      Vehicle(name: "Nissan Altima", mileage: 16.8, year: 2019, assetImage: "assets/nissan_altima.png"),
      Vehicle(name: "Volkswagen Jetta", mileage: 18.5, year: 2020, assetImage: "assets/volkswagen_jetta.png"),
      Vehicle(name: "Subaru Impreza", mileage: 19.2, year: 2016, assetImage: "assets/subaru_impreza.png"),
      Vehicle(name: "Mazda 6", mileage: 16.0, year: 2017, assetImage: "assets/mazda_6.png"),
      Vehicle(name: "Jeep Wrangler", mileage: 13.0, year: 2015, assetImage: "assets/jeep_wrangler.png"),
      Vehicle(name: "Ford F-150", mileage: 11.5, year: 2018, assetImage: "assets/ford_f150.png"),
      Vehicle(name: "Honda CR-V", mileage: 20.0, year: 2023, assetImage: "assets/honda_crv.png"),
      Vehicle(name: "Toyota Prius", mileage: 22.5, year: 2021, assetImage: "assets/toyota_prius.png"),
      Vehicle(name: "Hyundai Tucson", mileage: 14.8, year: 2017, assetImage: "assets/hyundai_tucson.png"),
      Vehicle(name: "Volvo XC60", mileage: 15.6, year: 2022, assetImage: "assets/volvo_xc60.png"),
    ];
  }
}