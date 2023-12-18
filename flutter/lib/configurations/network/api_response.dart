import 'package:dio/dio.dart';

import 'application_error.dart';

class ApiResponse<T> {
  T? data;
  Response? response;
  late Status status;
  ApplicationError? error;

  ApiResponse.success(this.response) {
    status = Status.ok;
    data = response?.data;
  }

  ApiResponse.failed(ApplicationError this.error) {
    status = Status.failed;
  }

  handleResponse({Function? onSuccess, Function? onFailed}) async {
    if (status == Status.ok) {
      await onSuccess?.call();
    } else if (status == Status.failed) {
      await onFailed?.call();
    }
    return Future.value();
  }
}

enum Status { ok, failed }
