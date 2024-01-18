import 'package:dio/dio.dart';
import 'constants /http_path.dart';
import 'http_request_type.dart';
import 'interceptors/error_interceptors.dart';
import 'network_response.dart'; // Importe sua classe NetworkResponse e outras dependências necessárias

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
      receiveTimeout: const Duration(seconds: 20), // 20 segundos
      connectTimeout: const Duration(seconds: 20),
      sendTimeout: const Duration(seconds: 20),
    ));

    dio.interceptors.addAll({
      ErrorInterceptors(dio),
    });

    return dio;
  }

  Future<NetworkResponse<T>> apiCall<T>({
    required String url,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? body,
    required HttpRequestType requestType,
  }) async {
    Uri uri = Uri.parse(HttpPath.baseUrl + url);

    try {
      switch (requestType) {
        case HttpRequestType.GET:
          {
            Options options = Options(headers: header);
            Response<dynamic> result = await dio.get(
              uri.toString(),
              queryParameters: queryParameters,
              options: options,
            );
            return NetworkResponse<T>(value: result.data);
          }
        case HttpRequestType.POST:
          {
            Options options = Options(headers: header);
            Response<dynamic> result = await dio.post(
              url,
              data: body,
              options: options,
            );
            return NetworkResponse<T>(value: result.data);
          }
        case HttpRequestType.DELETE:
          {
            Options options = Options(headers: header);
            Response<dynamic> result = await dio.delete(
              url,
              data: queryParameters,
              options: options,
            );
            return NetworkResponse<T>(value: result.data);
          }
        case HttpRequestType.PATCH:
          {
            Options options = Options(headers: header);
            Response<dynamic> result = await dio.patch(
              url,
              data: queryParameters,
              options: options,
            );
            return NetworkResponse<T>(value: result.data);
          }
        case HttpRequestType.PUT:
          {
            Options options = Options(headers: header);
            Response<dynamic> result = await dio.put(
              url,
              data: queryParameters,
              options: options,
            );
            return NetworkResponse<T>(value: result.data);
          }
      }
    } on DioError catch (error) {
      return NetworkResponse<T>(exception: Failure(code: error.response?.statusCode, errorMessage: error.message));
    } catch (error) {
      return NetworkResponse<T>(exception: Failure(code: -1, errorMessage: error.toString()));
    }
  }
}