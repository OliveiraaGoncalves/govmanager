import 'package:flutter/cupertino.dart';
import 'package:govmanager/app/home/domain/fuel_transaction_use_case.dart';

class FuelTransactionViewModel with ChangeNotifier {
  final FuelTransactionUseCase _useCase;

  FuelTransactionViewModel(this._useCase);

  Future<void> getTransactionsSecretaryOfSocialCommunication() async {
    final stream = await _useCase.getTransactionsSecretaryOfSocialCommunication();
    stream.listen((transactions) {
      transactions.map((e) => print(e));
      notifyListeners();
    });
  }
}
