import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'api_constants.dart';
import 'api_response.dart';
import 'application_error.dart';
import 'network_request.dart';

class NetworkManager {
  static final NetworkManager instance = NetworkManager();

  final Dio _dio = Dio();

  NetworkManager() {
    initDio();
  }

  void initDio() {
    _dio.options.baseUrl = baseUrl;
    _dio.options.connectTimeout = const Duration(seconds: 20);
    _dio.options.receiveTimeout = const Duration(seconds: 20);

    _dio.interceptors.add(InterceptorsWrapper(onRequest: (
      RequestOptions options,
      RequestInterceptorHandler handler,
    ) async {
      // Authorization
      final bool isAuthorized = options.extra['isAuthorized'] as bool;
      if (isAuthorized) {
        final String? token = await FirebaseAuth.instance.currentUser!.getIdToken();
        options.headers['Authorization'] = '$token';
        print('auth-Token:$token');
      }
      // Language
      // todo add language interceptor
      /*final AppLocale locale = Get.find<LocalizationService>().currentLocale;
          if (locale.languageCode != null) {
            options.headers['Accept-Language'] = locale.languageCode;
          }*/
      return handler.next(options);
    }));
    _dio.interceptors.add(PrettyDioLogger(
        requestHeader: true, requestBody: true, responseBody: true, responseHeader: true, compact: false));
  }

  Future<ApiResponse<T>> perform<T>(NetworkRequest request) async {
    try {
      final Response<dynamic> response = await _dio.request<dynamic>(
        request.url,
        data: request.data,
        queryParameters: request.queryParams,
        options: _getOptions(request),
      );
      return ApiResponse.success(response);
    } catch (e, s) {
      debugPrint('$e\n $s');
      return ApiResponse.failed(getApplicationErrorFromDioError(e as DioException));
    }
  }

  Options _getOptions(NetworkRequest request) => Options(
        headers: request.headers,
        method: request.method.name,
        extra: <String, dynamic>{
          'isAuthorized': request.isAuthorized,
        }, // read this later in interceptor to send token if needed
      );

  ApplicationError getApplicationErrorFromDioError(DioException dioError) {
    ErrorType errorType;
    String errorMsg = 'Network error';
    dynamic extra;
    if (dioError.response?.data != null && dioError.response?.data is Map) {
      errorMsg = dioError.response?.data['message'] ?? 'Network error';
      extra = dioError.response?.data['errors'];
    }
    if (dioError.response?.statusCode == 401) {
      errorType = Unauthorized();
    } else if (dioError.response?.statusCode == 404) {
      errorType = ResourceNotFound();
    } else {
      errorType = UnExpected();
    }
    return ApplicationError(type: errorType, errorMsg: errorMsg, extra: extra);
  }
}
