import 'package:dio/dio.dart';

import '../exceptions/bad_request_exception.dart';
import '../exceptions/conflict_exception.dart';
import '../exceptions/internal_server_error_exception.dart';
import '../exceptions/no_internet_connection_exception.dart';
import '../exceptions/not_found_exception.dart';
import '../exceptions/timeout_exception.dart';
import '../exceptions/unauthorized_exception.dart';

class ErrorInterceptors extends Interceptor {
  final Dio dio;

  ErrorInterceptors(this.dio);

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    switch (err.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        throw TimeOutException(err.requestOptions);
      case DioExceptionType.unknown:
        switch (err.response?.statusCode) {
          case 400:
            throw BadRequestException(err.requestOptions);
          case 401:
            throw UnauthorizedException(err.requestOptions);
          case 404:
            throw NotFoundException(err.requestOptions);
          case 409:
            throw ConflictException(err.requestOptions);
          case 500:
            throw InternalServerErrorException(err.requestOptions);
        }
        break;
      case DioExceptionType.cancel:
        break;
      case DioExceptionType.connectionError:
        throw NoInternetConnectionException(err.requestOptions);
      case DioExceptionType.badCertificate:
        // TODO: Handle this case.
      case DioExceptionType.badResponse:
        // TODO: Handle this case.
    }

    return handler.next(err);
  }
}