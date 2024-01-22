import 'package:core_network/interceptors/logging_interceptor.dart';
import 'package:dio/dio.dart';

import 'constants /http_path.dart';

class ApplicationNetwork {
  final dio = createDio();

  ApplicationNetwork._internal();

  static final _singleton = ApplicationNetwork._internal();

  factory ApplicationNetwork() => _singleton;

  static Dio createDio() {
    var dio = Dio(BaseOptions(
      baseUrl: HttpPath.baseUrl,
      receiveTimeout: const Duration(seconds: 20), // 20 seconds
      connectTimeout: const Duration(seconds: 20),
      sendTimeout: const Duration(seconds: 20),
    ));

    dio.interceptors.addAll({
      LoggingInterceptor(dio),
    });

    return dio;
  }
}