class NetworkResponse<T> {
  final T? data;
  final dynamic error;

  NetworkResponse({this.data, this.error});

  bool get isSuccess => data != null;

  bool get isError => error != null;

  void did(Function(T data) onData, Function(dynamic error) onError) {
    if (isSuccess) {
      onData(data as T);
    } else if (isError) {
      onError(error);
    }
  }

  factory NetworkResponse.success(T data) {
  return NetworkResponse<T>(data: data);
  }

  factory NetworkResponse.error(dynamic error) {
    return NetworkResponse<T>(error: error);
  }

  // Stream<T> toStream(NetworkResponse<T> networkResponse) async* {
  //   if (networkResponse.isSuccess) {
  //     yield networkResponse.data as T;
  //   } else if (networkResponse.isError) {
  //     throw networkResponse.error ?? Exception('GenericError');
  //   }
  // }
}

extension NetworkResponseToStreamExtension<T> on NetworkResponse<T> {
  Stream<T> toStream() async* {
    if (isSuccess) {
      yield data as T;
    } else if (isError) {
      throw error ?? Exception('GenericError');
    }
  }
}