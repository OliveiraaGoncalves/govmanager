
import 'dart:async';

import 'package:core_network/core_network.dart';
import 'package:govmanager/app/home/data/fuel_transaction_repository.dart';
import 'package:govmanager/app/home/domain/fuel_transaction.dart';

abstract class FuelTransactionUseCase {
  Future<NetworkResponse<List<FuelTransaction?>>>
  getTransactionsSecretaryOfSocialCommunication();
}

class FuelTransactionUseCaseImpl extends FuelTransactionUseCase {
  final FuelTransactionRepository _repository;

  FuelTransactionUseCaseImpl(this._repository);

  @override
  Future<NetworkResponse<List<FuelTransaction?>>> getTransactionsSecretaryOfSocialCommunication() async {
    return _repository.getTransactionsSecretaryOfSocialCommunication();
  }
}