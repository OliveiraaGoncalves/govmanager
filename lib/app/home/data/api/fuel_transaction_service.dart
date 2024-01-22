import 'package:core_network/constants%20/http_path.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../fuel_transaction_model.dart';

part 'fuel_transaction_service.g.dart';

@RestApi()
abstract class FuelTransactionService {
  factory FuelTransactionService(Dio dio) = _FuelTransactionService;

  @GET(HttpPath.civilHouseOne)
  Future<List<FuelTransactionModel>>
      getTransactionsSecretaryOfSocialCommunication();
}
