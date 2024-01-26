import 'package:core_shared_ui/core_shared_ui.dart';
import 'package:flutter/material.dart';
import 'package:govmanager/app/home/data/api/fuel_transaction_service.dart';
import 'package:govmanager/app/home/data/fuel_transaction_model.dart';

abstract class FuelTransactionRepository {
  Future<List<FuelTransactionModel>>
      getTransactionsSecretaryOfSocialCommunication();

  List<CardItemProperties> getResumeItens();
}

class FuelTransactionRepositoryImpl extends FuelTransactionRepository {
  final FuelTransactionService service;

  FuelTransactionRepositoryImpl(this.service);

  @override
  Future<List<FuelTransactionModel>>
      getTransactionsSecretaryOfSocialCommunication() async {
    return await service
        .getTransactionsSecretaryOfSocialCommunication()
        .then((value) => value);
  }

  @override
  List<CardItemProperties> getResumeItens() {
    return [
      CardItemProperties(iconStart: Icons.local_gas_station, label: Strings.featureHomeLabelCardItemOne, iconEnd: Icons.navigate_next),
      CardItemProperties(iconStart: Icons.local_gas_station, label: Strings.featureHomeLabelCardItemOne, iconEnd: Icons.navigate_next),
    ];
  }
}
