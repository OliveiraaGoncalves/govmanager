import 'package:core_shared/core_shared.dart';

import '../domain/fuel_transaction.dart';

class FuelTransactionModel implements Mappable<FuelTransaction> {
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

  FuelTransactionModel.fromJson(Map<String, dynamic> json)
      : gasStation = json['posto'],
        gasStationReason = json['posto_razao'],
        address = json['endereco'],
        state = json['estado'],
        customerCode = json['cod_cliente'],
        terminalCode = json['cod_terminal'],
        latitude = json['latitude'],
        longitude = json['longitude'],
        CNPJ = json['CNPJ'],
        date = json['data'],
        time = json['hora'],
        currentKm = json['kmAtual'],
        previousKm = json['kmAnterior'],
        kmUpdateDate = json['data_atualizacao_km'],
        fuelType = json['combustivel'],
        amount = json['valor'],
        cardNumber = json['numeroCartao'],
        literValue = json['valorLitro'],
        literQuantity = json['quantidadeLitros'],
        serviceType = json['tipo_servico'],
        refuelingCode = json['codAbastecimento'],
        status = json['status'],
        licensePlate = json['placa'],
        prefix = json['prefixo'],
        model = json['modelo'],
        vehicleBase = json['baseVeiculo'],
        vehicleCostCenter = json['centroDeCustoVeiculo'],
        brand = json['marca'],
        renavam = json['renavam'],
        vehicleYear = json['ano_veiculo'],
        tankCapacity = json['capacidade_tanque'],
        cityName = json['nome_cidade'],
        engineType = json['motorizacao'],
        color = json['cor'],
        chassis = json['chassi'],
        kmPerLiterHour = json['KmHoraPorLitro'],
        kmPerHourDriven = json['KmHoraRodado'],
        driver = json['condutor'],
        driverRegistration = json['registroCondutor'],
        driverLicense = json['cnhcondutor'],
        driverCPF = json['cpfcondutor'],
        driverCostCenter = json['centroDeCustoCondutor'],
        driverRegistrationNumber = json['matricula_condutor'],
        serviceName = json['nomeServico'];

  @override
  FuelTransaction toModel() {
    return FuelTransaction(
      gasStation: gasStation,
      gasStationReason: gasStationReason,
      address: address,
      state: state,
      customerCode: customerCode,
      terminalCode: terminalCode,
      latitude: latitude,
      longitude: longitude,
      CNPJ: CNPJ,
      date: date,
      time: time,
      currentKm: currentKm,
      previousKm: previousKm,
      kmUpdateDate: kmUpdateDate,
      fuelType: fuelType,
      amount: amount,
      cardNumber: cardNumber,
      literValue: literValue,
      literQuantity: literQuantity,
      serviceType: serviceType,
      refuelingCode: refuelingCode,
      status: status,
      licensePlate: licensePlate,
      prefix: prefix,
      model: model,
      vehicleBase: vehicleBase,
      vehicleCostCenter: vehicleCostCenter,
      brand: brand,
      renavam: renavam,
      vehicleYear: vehicleYear,
      tankCapacity: tankCapacity,
      cityName: cityName,
      engineType: engineType,
      color: color,
      chassis: chassis,
      kmPerLiterHour: kmPerLiterHour,
      kmPerHourDriven: kmPerHourDriven,
      driver: driver,
      driverRegistration: driverRegistration,
      driverLicense: driverLicense,
      driverCPF: driverCPF,
      driverCostCenter: driverCostCenter,
      driverRegistrationNumber: driverRegistrationNumber,
      serviceName: serviceName,
    );
  }
}
