import 'package:core_network/core_network.dart';
import 'package:govmanager/app/home/data/api/fuel_transaction_service.dart';
import 'package:govmanager/app/home/data/fuel_transaction_model.dart';

abstract class FuelTransactionRepository {
  Future<Stream<List<FuelTransactionModel>>>
      getTransactionsSecretaryOfSocialCommunication();
}

class FuelTransactionRepositoryImpl extends FuelTransactionRepository {
  final FuelTransactionService service;

  FuelTransactionRepositoryImpl(this.service);

  @override
  Future<Stream<List<FuelTransactionModel>>>
      getTransactionsSecretaryOfSocialCommunication() async {
    return service
        .getTransactionsSecretaryOfSocialCommunication()
        .then((value) => value.toStream());
  }
}
