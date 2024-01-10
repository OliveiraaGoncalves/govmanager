
import 'dart:async';

import 'package:govmanager/app/home/data/fuel_transaction.dart';
import 'package:govmanager/app/home/data/fuel_transaction_repository.dart';
import 'package:govmanager/app/home/domain/fuel_transaction_model.dart';

abstract class FuelTransactionUseCase {
  Future<List<FuelTransaction?>>
  getTransactionsSecretaryOfSocialCommunication();
}

class FuelTransactionUseCaseImpl extends FuelTransactionUseCase {
  final FuelTransactionRepository _repository;

  FuelTransactionUseCaseImpl(this._repository);

  @override
  Future<List<FuelTransaction?>> getTransactionsSecretaryOfSocialCommunication() async {
    return _repository.getTransactionsSecretaryOfSocialCommunication().then((value) => value.data);
  }


}