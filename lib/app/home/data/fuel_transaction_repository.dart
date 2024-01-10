import 'package:core_network/core_network.dart';
import 'package:govmanager/app/home/data/api/fuel_transaction_service.dart';

import 'fuel_transaction.dart';

abstract class FuelTransactionRepository {
  Future<NetworkResponse<List<FuelTransaction>>>
      getTransactionsSecretaryOfSocialCommunication();
}

class FuelTransactionRepositoryImpl extends FuelTransactionRepository {
  final FuelTransactionService service;

  FuelTransactionRepositoryImpl(this.service);

  @override
  Future<NetworkResponse<List<FuelTransaction>>>
      getTransactionsSecretaryOfSocialCommunication() {
    return service.getTransactionsSecretaryOfSocialCommunication().asStream().listen((event) {event.data.});
  }
}
