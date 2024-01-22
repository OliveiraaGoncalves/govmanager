import 'package:core_shared/core_shared.dart';
import 'package:json_annotation/json_annotation.dart';

import '../domain/fuel_transaction.dart';

part 'fuel_transaction_model.g.dart';

@JsonSerializable()
class FuelTransactionModel implements Mappable<FuelTransaction> {
  factory FuelTransactionModel.fromJson(Map<String, dynamic> json) =>
      _$FuelTransactionModelFromJson(json);

  @JsonKey(name: 'posto')
  String gasStation;

  @JsonKey(name: 'posto_razao')
  String gasStationReason;

  @JsonKey(name: 'endereco')
  String? address;

  @JsonKey(name: 'estado')
  String? state;

  @JsonKey(name: 'cod_cliente')
  String? customerCode;

  @JsonKey(name: 'cod_terminal')
  String? terminalCode;

  @JsonKey(name: 'latitude')
  String? latitude;

  @JsonKey(name: 'longitude')
  String? longitude;

  @JsonKey(name: 'CNPJ')
  String? CNPJ;

  @JsonKey(name: 'data')
  String? date;

  @JsonKey(name: 'hora')
  String? time;

  @JsonKey(name: 'kmAtual')
  String? currentKm;

  @JsonKey(name: 'kmAnterior')
  String? previousKm;

  @JsonKey(name: 'data_atualizacao_km')
  String? kmUpdateDate;

  @JsonKey(name: 'combustivel')
  String? fuelType;

  @JsonKey(name: 'valor')
  String? amount;

  @JsonKey(name: 'numeroCartao')
  String? cardNumber;

  @JsonKey(name: 'valorLitro')
  String? literValue;

  @JsonKey(name: 'quantidadeLitros')
  String? literQuantity;

  @JsonKey(name: 'tipo_servico')
  String? serviceType;

  @JsonKey(name: 'codAbastecimento')
  String? refuelingCode;

  @JsonKey(name: 'status')
  String? status;

  @JsonKey(name: 'placa')
  String? licensePlate;

  @JsonKey(name: 'prefixo')
  String? prefix;

  @JsonKey(name: 'modelo')
  String? model;

  @JsonKey(name: 'baseVeiculo')
  String? vehicleBase;

  @JsonKey(name: 'centroDeCustoVeiculo')
  String? vehicleCostCenter;

  @JsonKey(name: 'marca')
  String? brand;

  @JsonKey(name: 'renavam')
  String? renavam;

  @JsonKey(name: 'ano_veiculo')
  String? vehicleYear;

  @JsonKey(name: 'capacidade_tanque')
  int? tankCapacity;

  @JsonKey(name: 'nome_cidade')
  String? cityName;

  @JsonKey(name: 'motorizacao')
  String? engineType;

  @JsonKey(name: 'cor')
  String? color;

  @JsonKey(name: 'chassi')
  String? chassis;

  @JsonKey(name: 'KmHoraPorLitro')
  String? kmPerLiterHour;

  @JsonKey(name: 'KmHoraRodado')
  String? kmPerHourDriven;

  @JsonKey(name: 'condutor')
  String? driver;

  @JsonKey(name: 'registroCondutor')
  String? driverRegistration;

  @JsonKey(name: 'cnhcondutor')
  String? driverLicense;

  @JsonKey(name: 'cpfcondutor')
  String? driverCPF;

  @JsonKey(name: 'centroDeCustoCondutor')
  String driverCostCenter;

  @JsonKey(name: 'matricula_condutor')
  String? driverRegistrationNumber;

  @JsonKey(name: 'nomeServico')
  String? serviceName;

  FuelTransactionModel({required this.gasStation,
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

  @override
  FuelTransaction toModel() {
    return FuelTransaction(gasStation: gasStation,
        gasStationReason: gasStationReason,
        driverCostCenter: driverCostCenter);
  }
}
