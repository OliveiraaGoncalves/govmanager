import 'package:flutter/cupertino.dart';
import 'package:govmanager/app/home/domain/fuel_transaction_use_case.dart';

import '../domain/fuel_transaction.dart';

class FuelTransactionViewModel with ChangeNotifier {
  final FuelTransactionUseCase _useCase;

  FuelTransactionViewModel(this._useCase);
  late List<FuelTransaction> _transactions;

  List<FuelTransaction> get transactions => _transactions;

  Future<void> getTransactionsSecretaryOfSocialCommunication() async {
    _transactions = await _useCase
        .getTransactionsSecretaryOfSocialCommunication();

    notifyListeners();
  }
}
