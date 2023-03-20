import 'package:dio/dio.dart';
import 'package:my_family_flutter/core/utils/dependencies_injection.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants/cached_names.dart';

class APIClient {
  late Dio _client;
  final String baseURL = 'http://176.9.24.125:12403';

  APIClient() {
    _client = Dio(
      BaseOptions(
        baseUrl: baseURL,
        responseType: ResponseType.json,
        receiveTimeout: 30000,
        headers: {
          "Authorization":
              'Bearer ${di.get<SharedPreferences>().getString(CachedNames.cacheUserData)}'
        },
        connectTimeout: 30000,
      ),
    );
    _client.interceptors.add(LogInterceptor(
        responseBody: true, requestBody: true, logPrint: _logEvent));
  }

  _logEvent(Object? object) {
    var pattern = RegExp('.{1,800}');
    pattern
        .allMatches(object.toString())
        // ignore: avoid_print
        .forEach((match) => print(match.group(0)));
  }

  Future<Response> get(
    String url, {
    Map<String, dynamic>? params,
    CancelToken? cancelToken,
    Options? options,
  }) =>
      _client.get(
        url,
        queryParameters: params,
        cancelToken: cancelToken,
        options: options,
      );

  Future<Response> post(
    String url, {
    dynamic body,
    dynamic parametres,
    Options? options,
  }) =>
      _client.post(
        url,
        data: body,
        queryParameters: parametres,
        options: options,
      );

  Future<Response> put(
    String url, {
    dynamic body,
    Options? options,
  }) =>
      _client.put(
        url,
        data: body,
        options: options,
      );

  Future<Response> delete(
    String url, {
    dynamic body,
    Options? options,
    Map<String, dynamic>? params,
  }) =>
      _client.delete(
        url,
        data: body,
        options: options,
        queryParameters: params,
      );

  Future<Response> patch(
    String url, {
    dynamic body,
    Options? options,
    Function(int, int)? onSendProgress,
  }) =>
      _client.patch(
        url,
        data: body,
        options: options,
        onSendProgress: onSendProgress,
      );
}
