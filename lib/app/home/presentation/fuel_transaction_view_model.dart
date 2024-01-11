import 'package:flutter/cupertino.dart';
import 'package:govmanager/app/home/domain/fuel_transaction.dart';
import 'package:govmanager/app/home/domain/fuel_transaction_use_case.dart';

class FuelTransactionViewModel with ChangeNotifier {
  final FuelTransactionUseCase _useCase;

  FuelTransactionViewModel(this._useCase);

  List<FuelTransaction>? getTransactionsSecretaryOfSocialCommunication(){
    _useCase.getTransactionsSecretaryOfSocialCommunication().then((value) => value.data);
    return null;
  }
}