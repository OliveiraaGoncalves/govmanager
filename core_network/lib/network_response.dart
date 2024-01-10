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

  factory NetworkResponse.success(
      Map<String, dynamic> json, T Function(dynamic json) fromJson) {
    final data = fromJson(json);
    return NetworkResponse<T>(data: data);
  }

  factory NetworkResponse.error(dynamic error) {
    return NetworkResponse<T>(error: error);
  }
}
