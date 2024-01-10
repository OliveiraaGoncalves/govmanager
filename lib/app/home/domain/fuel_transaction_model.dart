class FuelTransactionModel {
  String gasStation;
  String gasStationReason;
  String? address;
  String? state;
  String? customerCode;
  String? terminalCode;
  String? latitude;
  String? longitude;
  String? CNPJ;
  String? date;
  String? time;
  String? currentKm;
  String? previousKm;
  String? kmUpdateDate;
  String? fuelType;
  String? amount;
  String? cardNumber;
  String? literValue;
  String? literQuantity;
  String? serviceType;
  String? refuelingCode;
  String? status;
  String? licensePlate;
  String? prefix;
  String? model;
  String? vehicleBase;
  String? vehicleCostCenter;
  String? brand;
  String? renavam;
  String? vehicleYear;
  int? tankCapacity;
  String? cityName;
  String? engineType;
  String? color;
  String? chassis;
  String? kmPerLiterHour;
  String? kmPerHourDriven;
  String? driver;
  String? driverRegistration;
  String? driverLicense;
  String? driverCPF;
  String driverCostCenter;
  String? driverRegistrationNumber;
  String? serviceName;

  FuelTransactionModel(
      {required this.gasStation,
      required this.gasStationReason,
      this.address,
      this.state,
      this.customerCode,
      this.terminalCode,
      this.latitude,
      this.longitude,
      this.CNPJ,
      this.date,
      this.time,
      this.currentKm,
      this.previousKm,
      this.kmUpdateDate,
      this.fuelType,
      this.amount,
      this.cardNumber,
      this.literValue,
      this.literQuantity,
      this.serviceType,
      this.refuelingCode,
      this.status,
      this.licensePlate,
      this.prefix,
      this.model,
      this.vehicleBase,
      this.vehicleCostCenter,
      this.brand,
      this.renavam,
      this.vehicleYear,
      this.tankCapacity,
      this.cityName,
      this.engineType,
      this.color,
      this.chassis,
      this.kmPerLiterHour,
      this.kmPerHourDriven,
      this.driver,
      this.driverRegistration,
      this.driverLicense,
      this.driverCPF,
      required this.driverCostCenter,
      this.driverRegistrationNumber,
      this.serviceName});
}
