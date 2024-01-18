import 'package:core_network/constants%20/http_path.dart';
import 'package:core_network/core_network.dart';
import 'package:core_network/http_request_type.dart';

import '../fuel_transaction_model.dart';

abstract class FuelTransactionService {
  Future<NetworkResponse<List<FuelTransactionModel>>>
      getTransactionsSecretaryOfSocialCommunication();
}

class FuelTransactionServiceImpl extends FuelTransactionService {
  final HttpClient httpClient;

  FuelTransactionServiceImpl(this.httpClient);

  @override
  Future<NetworkResponse<List<FuelTransactionModel>>>
      getTransactionsSecretaryOfSocialCommunication() async {
    return httpClient.apiCall(
        url: HttpPath.secretaryOfSocialCommunication,
        requestType: HttpRequestType.GET
    );
  }
}
