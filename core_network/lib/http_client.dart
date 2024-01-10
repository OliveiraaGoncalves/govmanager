import 'package:core_network/constants%20/http_path.dart';
import 'package:core_network/http_request_type.dart';
import 'package:dio/dio.dart';

import 'interceptors/error_interceptors.dart';
import 'network_response.dart';

class HttpClient {
  final dio = createDio();

  HttpClient._internal();

  static final _singleton = HttpClient._internal();

  factory HttpClient() => _singleton;

  final Map<String, String> header = {
    'Content-type': 'application/json',
    'Accept': 'application/json',
    'client-secret': 'xyz',
    'client-id': 'abc',
    'package-name': 'com.sasa.abc',
    'platform': 'android',
    'Authorization': "access_token"
  };

  static Dio createDio() {
    var dio = Dio(BaseOptions(
      baseUrl: HttpPath.baseUrl,
      receiveTimeout: const Duration(seconds: 20), // 20 seconds
      connectTimeout: const Duration(seconds: 20),
      sendTimeout: const Duration(seconds: 20),
    ));

    dio.interceptors.addAll({
      ErrorInterceptors(dio),
    });

    return dio;
  }

  Future<NetworkResponse<T>> apiCall<T>(
      {required String url,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? body,
      required HttpRequestType requestType}) async {
    late Response result;
    try {
      switch (requestType) {
        case HttpRequestType.GET:
          {
            Options options = Options(headers: header);
            result = await dio.get(url,
                queryParameters: queryParameters, options: options);
            break;
          }
        case HttpRequestType.POST:
          {
            Options options = Options(headers: header);
            result = await dio.post(url, data: body, options: options);
            break;
          }
        case HttpRequestType.DELETE:
          {
            Options options = Options(headers: header);
            result =
                await dio.delete(url, data: queryParameters, options: options);
            break;
          }
        case HttpRequestType.PATCH:
          {
            Options options = Options(headers: header);
            result =
                await dio.patch(url, data: queryParameters, options: options);
            break;
          }
        case HttpRequestType.PUT:
          {
            Options options = Options(headers: header);
            result =
                await dio.put(url, data: queryParameters, options: options);
            break;
          }
      }

      if (result.data == null) {
        return NetworkResponse.error("Data is null");
      } else {
        return NetworkResponse.success(result.data);
      }
    } on DioException catch (error) {
      return NetworkResponse.error(error.message);
    } catch (error) {
      return NetworkResponse.error(error.toString());
    }
  }
}
