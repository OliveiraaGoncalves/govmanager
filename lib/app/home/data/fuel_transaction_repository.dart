import 'package:govmanager/app/home/data/api/fuel_transaction_service.dart';
import 'package:govmanager/app/home/data/fuel_transaction_model.dart';

abstract class FuelTransactionRepository {
  Future<List<FuelTransactionModel>>
      getTransactionsSecretaryOfSocialCommunication();
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
}
