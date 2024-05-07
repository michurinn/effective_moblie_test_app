import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

/// The base class with client configuration of [Dio].
class AppDioConfigurator {
  const AppDioConfigurator();

  /// Creating a client [Dio].
  Dio create({
    required Iterable<Interceptor> interceptors,
    required String url,
    String? proxyUrl,
  }) {
    const timeout = Duration(seconds: 30);

    final dio = Dio();

    dio.options
      ..baseUrl = url
      ..connectTimeout = timeout
      ..receiveTimeout = timeout
      ..sendTimeout = timeout;

    dio.interceptors.addAll(interceptors);

    if (kDebugMode) {
      dio.interceptors.add(LogInterceptor(
        requestBody: true,
        responseBody: true,
       ));
    }

    return dio;
  }
}
