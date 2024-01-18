import 'dart:async';

class NetworkResponse<T> {
  T? value;
  Failure? exception;

  NetworkResponse({this.value, this.exception});
}

class Failure {
  final int? code;
  final String? errorMessage;

  Failure({this.code, this.errorMessage});
}

extension ToResult<T> on NetworkResponse<T> {
  Result<T> toResult() {
    if (value != null) {
      return Result.success(value!);
    } else if (exception != null) {
      return Result.failure(exception!);
    }
      return Result.failure(Failure(code: -1, errorMessage: "Unknown error"));
  }
}

extension ToStream<T> on NetworkResponse<T> {
  Stream<T> toStream() async* {
    if (value != null) {
      yield value!;
    } else if (exception != null) {
      throw exception!;
    }
    }
}

class Result<T> {
  T? value;
  Failure? failure;

  Result.success(this.value);
  Result.failure(this.failure);
}